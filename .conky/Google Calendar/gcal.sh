#! /bin/sh

# Uses gcalcli to get a Calendar to be displayed with conky.
# Adjusts varies colours and adds table characters

echo "\${color white}"

# -w : width
gcalcli --conky --color_date cyan --color_border black --color_now_marker red --color_reader yellow --color_owner white --monday -w 24 calw 4 |
    sed -e 's/(0\x71(B/─/g' \
        -e 's/(0\x78(B/│/g' \
        -e 's/(0\x6A(B/┘/g' \
        -e 's/(0\x6B(B/┐/g' \
        -e 's/(0\x6C(B/┌/g' \
        -e 's/(0\x6D(B/└/g' \
        -e 's/(0\x6E(B/┼/g' \
        -e 's/(0\x74(B/├/g' \
        -e 's/(0\x75(B/┤/g' \
        -e 's/(0\x76(B/┴/g' \
        -e 's/(0\x77(B/┬/g' \
        -e 's/\#/\\\#/g' \
	| perl -0777 -pe 's/\$(?!{)/\$\$/g' \ #escape $ with $$
	| perl -0777 -pe 'while(s/(\$\{color \w+\})([^\{]*?)\1/\1\2/g) {}'

# -0777 removes the line delimeter causing the input to be read as one string
# -e execute the command given
# -p add 'while (<>) { ... } print;'

#colours: black, brightblack, red, brightred, green brightgreen,
# yellow, brightyellow, blue, brughtblue, magenta, brightmagenta,
# cyan, brightcyan, white, brightwhite
