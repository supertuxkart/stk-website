require 'csv'
require 'jekyll_picture_tag'
require 'kramdown'
require 'kramdown-parser-gfm'

module GalleryUtils
    GalleryType =
    {
        traditional: 'traditional',
        nolines: 'nolines',
        packed: 'packed',
        sidebar: 'sidebar'
    }
    class Gallery < PictureTag::Picture
        def initialize(tag_name, markup, parse_context)
            super
            @gallery_type = :packed
            @widths = '0'
            @heights = '0'
            @sidebar_text = ''
            @sidebar_picture_location = 'left'
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
                    elsif param.start_with?('picture_side=') then
                        @sidebar_picture_location = param['picture_side='.length..]
                        param_exists = true
                    elsif param.start_with?('text=') then
                        @sidebar_text = param['text='.length..]
                        param_exists = true
                        @gallery_type = :sidebar
                    end
                end
            end
            if param_exists then
                @images.delete(@images[0])
            end
            @images.each do |img| img.strip! end
            @total_images = @images.length.to_s
            if @widths == '0' and @heights == '0' then
                if @gallery_type == :sidebar
                    @widths = '50%' # Fallback if width is not set
                else
                    @widths = 'auto_min120'
                end
            end
        end
        def get_img_content(context, image, caption, href, c_alt_text)
            preset = context['site'].data['picture']['presets']['default']
            orig_val = preset['link_source']
            preset['link_source'] = false
            if href == '' then
                href = image
                if context['site']['baseurl'] then
                    href = context['site']['baseurl'] + href
                end
            end
            alt_text = c_alt_text ? c_alt_text : File.basename(image, File.extname(image))
            @raw_params = image + ' --alt ' + alt_text
            result = '<a href="' + href + '" target="_blank">' +
                method(:render).super_method.call(context) + '</a>'
            preset['link_source'] = orig_val
            return result
        end

        # Used to parse a single line of gallery image data
        def parse_row(row)
            data = CSV.parse(row)
            return nil if data.empty? || data[0].empty?
            
            {
                image: data[0][0],
                caption_raw: data[0][1],
                href_raw: data[0][2],
                alt_raw: data[0][3]
            }
        end

        # Render raw data into HTML components
        def render_components(context, raw_data)
            # The || operator is used to provide a default value in case the variable is nil
            caption = raw_data[:caption_raw] || ""
            if !caption.empty?
                expended = Liquid::Template.parse(caption).render(context)
                caption = Kramdown::Document.new(expended, input: 'GFM').to_html
                caption.sub!('<p>', '<p class="gallery-caption">')
            end
            
            href = raw_data[:href_raw] || ""
            if !href.empty?
                href = Liquid::Template.parse(href).render(context)
            end
            
            c_alt_text = raw_data[:alt_raw] || ""
            if !c_alt_text.empty?
                c_alt_text = Liquid::Template.parse(c_alt_text).render(context)
            end
            
            {
                image: raw_data[:image],
                caption: caption,
                href: href,
                alt: c_alt_text
            }
        end

        def render(context)
            result = ""
            
            # For sidebars, we render the sidebar text
            text_html = ""
            if @gallery_type == :sidebar && !@sidebar_text.nil? && !@sidebar_text.empty?
                rendered_text = Liquid::Template.parse(@sidebar_text).render(context)
                text_html = Kramdown::Document.new(rendered_text, input: 'GFM').to_html
            end

            # Loop over images
            for img in @images do
                raw_data = parse_row(img)
                next unless raw_data
                
                # Render the components (Liquid/Kramdown)
                components = render_components(context, raw_data)
                
                img_html = get_img_content(context, components[:image], components[:caption], components[:href], components[:alt])
                
                if @gallery_type == :sidebar
                    img_order = (@sidebar_picture_location == 'left') ? '1' : '2'
                    img_width = @widths == '0' ? 'auto' : @widths
                    # We use a variable to be able to override the value when wrapping is needed on small screens
                    img_style = 'style="order: ' + img_order + '; --sidebar-width: ' + img_width
                    result += '<div class="gallery-sidebar-img" ' + img_style + ';">' + img_html
                    if components[:caption].length > 0
                        result += components[:caption] 
                    end
                    result += "</div>\n"
                else
                    # Wrap in standard grid structure
                    result += '<div class="' + get_css_class() + '">' + img_html
                    if components[:caption].length > 0
                        result += components[:caption] 
                    end
                    result += "</div>\n"
                end
            end

            # Wrap the results in the appropriate container
            final_result = ""
            if @gallery_type == :sidebar
                final_result = '<div class="gallery-sidebar">'
                text_order = (@sidebar_picture_location == 'left') ? '2' : '1'
                final_result += '<div class="gallery-sidebar-text" style="order: ' + text_order + '">' + text_html + '</div>'
                final_result += result # This adds the image
                final_result += "</div>\n"
            else
                final_result = "<div class=\"gallery-container\">\n" + result + "</div>\n"
            end

            # Inject CSS for the english pages only to prevent duplicate CSS
            if context['page']['lang'] == 'en'
                add_css(context)
            end

            return final_result
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
                caption_padding = (@widths!= '0') ? '3px;' : '3px 20px;'
                css_page.content +=
'
.gallery-container {
    display: flex;
    flex-flow: row wrap;
    justify-content: center;
    text-align: center;
    padding: 0;
    margin: 0;
    list-style: none;
}

.gallery-caption {
    display: block;
    margin: 3px;
    padding: ' + caption_padding + '
    text-align: center;
    font-style: italic;
}
'
            end
            if not context['gallery-sidebar-css'] then
                context['gallery-sidebar-css'] = true
                css_page.content +=
'
.gallery-sidebar {
    display: flex;
    flex-wrap: wrap;
    align-items: flex-start;
    gap: 20px;
    margin: 20px 0;
}

.gallery-sidebar-img {
    flex: 0 0 auto;
    max-width: 100%;
    flex-basis: var(--sidebar-width, 50%); 
    max-width: var(--sidebar-width, 50%);
}

.gallery-sidebar-img img {
    max-width: 100%;
    height: auto;
    display: block;
}

.gallery-sidebar-text {
    flex: 1 1 0%;
    min-width: 250px;
}

/* On narrow screens where we want to wrap around,
   we avoid applying the width limits and also center the picture
   The limit is 767 because at 767 or less the sizes parameter
   from elsewhere tells the browser to use the 400px pictures. */
@media (max-width: 767px) {
    .gallery-sidebar-img {
        --sidebar-width: 100% !important;
        text-align: center
    }

    .gallery-sidebar-img img {
        margin: 0 auto;
    }
    
    .gallery-sidebar-text {
        flex: 0 0 100% !important;
        min-width: 0;
    }
}

'
            end
            if not context[get_css_class()] then
                context[get_css_class()] = true
                has_box = (@gallery_type == :traditional or @gallery_type == :nolines ? true : false)
                scale = (has_box ? '85%' : '100%')
                picture_max_height = (@heights == '0') ? 'none' : @heights

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
    height: auto;
}

.' + get_css_class() + ' img {
    display: inline-block;
    margin: auto;
    width: auto;
    height: auto;
    max-height: ' + picture_max_height + ';
    max-width: ' + scale + ';
}
'
            end
        end
    end
    class SingleGallery < Gallery
        def get_img_content(context, image, caption, href, c_alt_text)
            alt_text = c_alt_text ? c_alt_text : File.basename(image, File.extname(image))
            if context['site']['baseurl'] then
                image = context['site']['baseurl'] + image
            end
            href = image if href == ''
            style = ''
            return '<a href="' + href + '" target="_blank"><img src="' + image + '" alt="' + alt_text + '"' + style + '></a>'
        end
    end
end

Liquid::Template.register_tag('gallery', GalleryUtils::Gallery)
# Gallery using original image only
Liquid::Template.register_tag('single_gallery', GalleryUtils::SingleGallery)
