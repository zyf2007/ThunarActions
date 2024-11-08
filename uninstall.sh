uca=~/.config/Thunar/uca.xml
if grep -q "zyf2007" $uca
then
  echo "Uninstalling..."
  temp_file=$(mktemp)
  sed '/<!-- config by zyf2007 start -->/,/<!-- config by zyf2007 end -->/d' $uca > $temp_file
  mv $temp_file $uca
  echo "Finished!"
else
  echo "Actions not installed!"
fi 
