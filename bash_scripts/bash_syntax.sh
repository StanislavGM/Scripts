#syntax.sh
#Declaring functions using the reserverd
#multiline
function f1 {
	echo Hello I\'m function1
	echo Bye!
}
#One line
function f2 { echo Hello I\'m function2; echo Bye!; }
#Declaring functions without the function reserved word
#Multiline
f3 () {
	echo Hello I\'m function 3
	echo Bye!
}
#One line
f4 () { echo Hello I\'m function 4; echo Bye!; }
#Invoking functions
f4
f3
f2
f1
