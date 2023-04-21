#! /bin/bash
#
# we assume you have https://github.com/googlefonts/fontmake installed properly!

rm -rf instance_*/
rm -rf variable_*/
rm -rf master_*/

for f in $( find -name *.glyph* ) ; do 
	fontmake $f -i
	fontmake $f -o variable
done

rm -rf *_ufo/

