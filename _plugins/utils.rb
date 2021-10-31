module STKWebsite
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
end
