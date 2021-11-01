require 'csv'
require 'jekyll_picture_tag'
require 'kramdown'
require 'kramdown-parser-gfm'

module GalleryUtils
    GalleryType =
    {
        traditional: 'traditional',
        nolines: 'nolines',
        packed: 'packed'
    }
    class Gallery < PictureTag::Picture
        def initialize(tag_name, markup, parse_context)
            super
            @gallery_type = :packed
            @widths = '0'
            @heights = '0'
            @images = @raw_params.split("\n")
            param_exists = false
            if @images.length > 0
                for param in @images[0].split(',') do
                    param.strip!
                    if param.start_with?('mode=') then
                        type = param['mode='.length..]
                        if GalleryType.has_value?(type) then
                            @gallery_type = GalleryType.key(type)
                        end
                        param_exists = true
                    elsif param.start_with?('widths=') then
                        @widths = param['widths='.length..]
                        param_exists = true
                    elsif param.start_with?('heights=') then
                        @heights = param['heights='.length..]
                        param_exists = true
                    end
                end
            end
            if param_exists then
                @images.delete(@images[0])
            end
            @total_images = @images.length.to_s
            if @widths == '0' and @heights == '0' then
                @widths = 'auto_min120'
            end
        end
        def get_img_content(context, image, caption)
            alt_text = File.basename(image, File.extname(image))
            @raw_params = image + ' --alt ' + alt_text
            if caption.length > 0 and @heights != '0' and @gallery_type == :packed then
                @raw_params += ' --img style="max-height: calc(100% - 1em - 10px);"'
            end
            return '<div class="' + get_css_class() + '">' +
                method(:render).super_method.call(context)
        end
        def render(context)
            result = "<div class=\"gallery-container\">\n"
            for img in @images do
                data = CSV.parse(img)
                image = data[0][0]
                caption = ''
                if data[0].length > 1 then
                    expended = Liquid::Template.parse(data[0][1]).render(context)
                    caption = Kramdown::Document.new(expended, input: 'GFM').to_html
                    caption.sub!('<p>', '<p class="gallery-caption">')
                end
                result += get_img_content(context, image, caption)
                if caption.length > 0 then
                    result += caption
                end
                result += "</div>\n"
            end
            result += '</div>'
            if context['page']['lang'] == 'en'
                add_css(context)
            end
            return result
        end
        def replace_var(data)
            data.sub('%', 'per').sub('/', 'd').sub('*', 'm')
                .tr('( ,)', '')
        end
        def get_css_class()
            GalleryType[@gallery_type] + '_' +
                replace_var(@widths) + '_' + replace_var(@heights)
        end
        def add_css(context)
            css_page = STKWebsite::get_css_page(context)
            if not context['gallery-container'] then
                context['gallery-container'] = true
                css_page.content +=
'
.gallery-container {
    display: flex;
    flex-flow: row wrap;
    justify-content: center;
    padding: 0;
    margin: 0;
    list-style: none;
}

.gallery-caption {
    margin: 3px;
    padding: 3px;
    text-align: center;
}
'
            end
            if not context[get_css_class()] then
                context[get_css_class()] = true
                has_box = (@gallery_type == :traditional or @gallery_type == :nolines ? true : false)
                scale = (has_box ? '85%' : '100%')
                css_page.content +=
'
.' + get_css_class() + ' {
    padding: 3px;' +
    (has_box ?
'
    margin: 3px;
    background: lightgrey;' : '') +
    (@gallery_type == :traditional ?
'
    border-style: solid;
    border-color: darkgrey;
    border-width: thin;' : '') +
'
    width: ' + (@widths == '0' ? 'auto' : @widths == 'auto_min120' ?
        'calc(100% / ' + @total_images + ");\n    min-width: 120px" : @widths) +';
    height: ' + (@heights == '0' ? 'auto' : @heights) +';
}

.' + get_css_class() + ' img {
    display: block;
    margin: auto;
    width: auto;
    height: auto;
    max-height: ' + scale + ';
    max-width: ' + scale + ';
}
'
            end
        end
    end
    class SingleGallery < Gallery
        def get_img_content(context, image, caption)
            alt_text = File.basename(image, File.extname(image))
            if context['site']['baseurl'] then
                image = context['site']['baseurl'] + image
            end
            style = ''
            if caption.length > 0 and @heights != '0' and @gallery_type == :packed then
                style = ' style="max-height: calc(100% - 1em - 10px);"'
            end
            return '<div class="' + get_css_class() + '"><a href="' + image + '"><img src="' + image + '" alt="' + alt_text + '"' + style + '></a>'
        end
    end
end

Liquid::Template.register_tag('gallery', GalleryUtils::Gallery)
# Gallery using original image only
Liquid::Template.register_tag('single_gallery', GalleryUtils::SingleGallery)
