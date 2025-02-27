function callingSomeFunction() {
local -n someArray=${1:?}
for value in "${someArray[@]}"
do
	echo $value:
done
}
array=("one" "two" "LAST")
callingSomeFunction array
