require 'cgi'
require 'kramdown/parser/gfm'

module STKWebsite
    def STKWebsite::get_title_id(context, title)
        # From Kramdown::Parser::GFM::generate_gfm_header_id
        result = title.downcase
        result.gsub!(Kramdown::Parser::GFM::NON_WORD_RE, '')
        result.tr!(" \t", '-')
        context['title_id_counter'] = {} if not context['title_id_counter']
        if not context['title_id_counter'].include?(result) then
            context['title_id_counter'][result] = 0
        else
            context['title_id_counter'][result] += 1
        end
        counter_result = context['title_id_counter'][result]
        result << "-#{counter_result}" if counter_result > 0
        return result
    end
    def STKWebsite::get_css_page(context)
        page_name = context['page']['name']
        # Only site from a page has complete structure for Jekyll::PageWithoutAFile
        site = context['site'].pages[0].site
        css_name = File.basename(page_name, File.extname(page_name)) + '.css'
        css_page = site.pages.select {|p| p.name == css_name}
        if css_page.length == 0 then
            new_page = nil
            site.pages << Jekyll::PageWithoutAFile.new(site, site.source, '.', css_name).tap do |page|
                page.content = ''
                page.output = ''
                page.data['layout'] = nil
                new_page = page
            end
            return new_page
        end
        return css_page[0]
    end
    def STKWebsite::translate_url(url, lang, baseurl, page_translations)
        # Skip translating url if there is a number sign inside, because each language will have different content
        if not url.include?('#') and
            lang != 'en' and page_translations.include?(url) and page_translations[url].include?(lang) then
            result = '/' + lang + '/' + url
        else
            result = '/' + url
        end
        result = baseurl + result if baseurl
        return result
    end
    class GetImage < Liquid::Tag
        def render(context)
            content = Liquid::Template.parse('{{ content }}').render(context)
            img = /<img src=\"(.*?)\"/.match(content)
            if img then
                return img[0].scan(/"([^"]*)"/)
            end
            default = '/assets/images/logo.png'
            if context['site']['baseurl'] then
                default = context['site']['baseurl'] + default
            end
            return default
        end
    end
    class GetDescription < Liquid::Tag
        def render(context)
            content = Liquid::Template.parse('{{ content }}').render(context)
            default = PoUtils::translate_string(context['site'], context['page']['lang'],
                "SuperTuxKart is a 3D open-source arcade racer with a variety characters, tracks, and modes to play.", '', false)
            first_paragraph = content.index('</p>')
            if first_paragraph == nil then
                return default
            end
            content = content[0 .. first_paragraph + 4]
            # From hooks.rb
            return CGI.escapeHTML(content.delete("\t").gsub("\n", " ").gsub(/<\/?[^>]*>/, "").squeeze(" ").lstrip.rstrip)
        end
    end
    class IncludeRelativeUntranslated < Jekyll::Tags::IncludeRelativeTag
        def page_path(context)
            page, site = context.registers.values_at(:page, :site)
            return site.source unless page
            site.in_source_dir '/wiki_untranslated'
        end
    end
end

# Get image and description for open graph metadata
Liquid::Template.register_tag('og_get_image', STKWebsite::GetImage)
Liquid::Template.register_tag('og_get_description', STKWebsite::GetDescription)
Liquid::Template.register_tag('include_relative_untranslated', STKWebsite::IncludeRelativeUntranslated)
