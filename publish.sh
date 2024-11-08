rm -rf ./uca.xml
touch ./uca.xml
echo "<!-- config by zyf2007 start -->" >> ./uca.xml
sed -n '/<actions>/,/<\/actions>/p' ~/.config/Thunar/uca.xml | sed -e '1s/^.*<actions>//' -e '$s/<\/actions>.*$//'  >> ./uca.xml
echo "<!-- config by zyf2007 end -->" >> ./uca.xml
git add .
git commit -m "$1"
git push
