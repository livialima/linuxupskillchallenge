#!/bin/bash
# 
# This will build one big PDF file from the course files.
# 
# You may need to install some packages first for this to work:
#
# MAC:
#   brew install pandoc
#   brew install homebrew/cask/basictex
#
# LINUX:
#   sudo apt install pandoc
#   sudo apt-get install texlive-xetex texlive-fonts-recommended ttf-xfree86-nonfree
#
# No instructions for Windows users yet. Sorry! :(

cd docs &&
pandoc -o book.pdf 01.md 02.md 03.md 04.md 05.md 06.md 07.md 08.md 09.md 10.md 11.md 12.md 13.md 14.md 15.md 16.md 17.md 18.md 19.md 20.md 21.md
#pandoc --pdf-engine=latexmk \
#  -V lang="en-us" -V babel-lang=english \
#  -V 'mainfont:DejaVuSerif.ttf' \
#         -V 'sansfont:DejaVuSans.ttf' \
#         -V 'monofont:DejaVuSansMono.ttf' \
#         -V 'mathfont:texgyredejavu-math.otf' \
#         --toc -s *.md   -t pdf -o  book.pdf
