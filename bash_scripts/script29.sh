echo "Which color do you like?"
echo "1 - Red"
echo "2 - Blue"
echo "3 - Green"
echo "4 - Orange"
read color
case $color in
1)echo "Red is a fav.color";;
2)echo "Bloe is a fav.color";;
3)echo "Green is fav.color";;
4)echo "Orange is fav.color";;
*)echo "This color isn't available please select from a issued list";;
esac
