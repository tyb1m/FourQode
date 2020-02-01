module ApplicationHelper
  require "redcarpet"
    require "coderay"

    class HTMLwithCoderay < Redcarpet::Render::HTML
        def block_code(code, language)
            language = language.split(':')[0]

            case language.to_s
            when 'c'
                lang = 'c'
            when 'cpp'
                lang = 'c++'
            when 'cs'
                lang = 'c#'
            when 'dart'
                lang = 'dart'
            when 'go'
              lang = 'go'
            when 'html'
              lang = 'html'
            when 'java'
              lang = 'java'
            when 'js'
              lang = 'javascript'
            when 'kt'
              lang = 'kotlin'
            when 'sql'
              lang = 'sql'
            when 'm'
              lang = 'object-c'
            when 'pl'
              lang = 'perl'
            when 'php'
              lang = 'php'
            when 'py'
              lang = 'python'
            when 'r'
              lang = 'r'
            when 'rb'
              lang = 'ruby'
            when 'rs'
              lang = 'rust'
            when 'scala'
              lang = 'scala'
            when 'swift'
              lang = 'swift'
            when 'ts'
              lang = 'typescript'
            when ''
                lang = 'md'
            else
                lang = language
            end

            CodeRay.scan(code, lang).div
        end
    end

    def markdown(text)
        html_render = HTMLwithCoderay.new(filter_html: true, hard_wrap: true)
        options = {
            autolink: true,
            space_after_headers: true,
            no_intra_emphasis: true,
            fenced_code_blocks: true,
            tables: true,
            hard_wrap: true,
            xhtml: true,
            lax_html_blocks: true,
            strikethrough: true
        }
        markdown = Redcarpet::Markdown.new(html_render, options)
        markdown.render(text)
    end
end
