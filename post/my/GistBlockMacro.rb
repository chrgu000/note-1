require 'asciidoctor'
require 'asciidoctor/extensions'


class GistBlockMacro < Asciidoctor::Extensions::BlockMacroProcessor
  use_dsl

  named :asciinema

  def process parent, target, attrs
    title_html = (attrs.has_key? 'title') ?
        %(<div class="title">#{attrs['title']}</div>\n) : nil

    html = %(
#{title_html}
<div name="#{attrs[2]}|#{attrs[3]}|#{attrs[4]}" class="asciinema-add-player" id="#{attrs[1]}" ></div>)

    create_pass_block parent, html, attrs, subs: nil
  end
end
