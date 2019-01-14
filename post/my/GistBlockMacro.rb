require 'asciidoctor'
require 'asciidoctor/extensions'


class GistBlockMacro < Asciidoctor::Extensions::BlockMacroProcessor
  use_dsl

  named :asciinema

  def process parent, target, attrs

    html = %(<asciinema-player src="#{attrs[1]}" cols="#{attrs[2]}" rows="#{attrs[3]}" speed="#{attrs[4]}"></asciinema-player>)
    create_pass_block parent, html, attrs, subs: nil
  end
end
