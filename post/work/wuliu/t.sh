#!/bin/bash

g=${@: -1}
g=${g##*/}
g=${g%.*}


# echo $@
# echo "---"
# echo $g

asciidoctor $@ -a noheader -a nofooter -o - |
pandoc -f html --reference-docx=ref.docx --self-contained -o $g.docx