require 'asciidoctor'
require 'asciidoctor/extensions'

module Gojs
	# create_block parent, context, source, attrs, opts = {}
	class BlockProcessor < Asciidoctor::Extensions::BlockProcessor
	  use_dsl

	  named :gojs
	  on_context :listing
	  parse_content_as :simple

	  def process parent, reader, attrs
		lines = reader.lines # get raw lines
		#print lines
		data = ''
		while !lines.empty?
			#print lines.shift
			data << lines.shift
		end
		type = attrs[2]
		divid = attrs[3]
		width = attrs[4]
		height = attrs[5]
		# style="width:#{divid}px; height:#{divid}px"
		
		html = %(
			<div id="#{divid}" style="border: 1px solid #dddddd; width:#{width}; height:#{height}" ></div>
			<script>
				new GoJsT('#{type}','#{divid}',#{data})
			</script>
		)
	    
		#print html
		create_listing_block parent, html, attrs, subs: nil
		#Asciidoctor::Block.new parent, :listing, :source => html, :attributes => attrs
		#Asciidoctor::Block.new parent, :literal, :source => html, :attributes => attrs
		#create_paragraph parent, html, attrs
		
	  end
	end
	
	class MindMapBlockProcessor < Asciidoctor::Extensions::BlockProcessor
	  use_dsl

	  named :mindmap
	  on_context :paragraph
	  parse_content_as :simple

	  def process parent, reader, attrs
		lines = reader.lines # get raw lines
		data = ''
		while !lines.empty?
			#print lines.shift
			data << lines.shift
		end
		divid = attrs[2]
		width = attrs[3]
		height = attrs[4]
		# style="width:#{divid}px; height:#{divid}px"
		
		html = %(
			<div id="#{divid}" style="border: 1px solid #dddddd; width:#{width}; height:#{height}" ></div>
			<script>
				
				#{data}
			    //t.gojsmindmap("#{divid}",model);
			</script>
		)
	    
		#print html
		create_listing_block parent, html, attrs, subs: nil
		
		
	  end
	end
end