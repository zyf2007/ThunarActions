uca=~/.config/Thunar/uca.xml
if grep -q "zyf2007" $uca
then
  echo "Actions already installed. Please Uninstall first."
else
  echo "Installing..."
  temp_file=$(mktemp)
  sed '/<actions>/r ./uca.xml' $uca > $temp_file 
  mv $temp_file $uca
  echo "Finished!"
fi
