for file in *.png; do magick "$file" -border 1 -bordercolor \#DFDFDF "./converted/$file"
done
