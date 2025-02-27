# The first image of function
#_() { for i in {1..10}; do echo -n "$FUNCNAME"; done; echo; }
#_
# The second image of function
_() {
for i in {1..10}
do
	echo -n "$FUNCNAME"
done
echo
}
_
# The third image of function, works through cli input only
#:(){ echo ":"; }; :
