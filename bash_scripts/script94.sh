function redirection_out_ps() {
	declare -a output=("baeldung" "lorem" "ipsum" "curacg")
	for element in "${output[@]}"
	do
		echo $element
	done
}> >(grep "g")
redirection_out_ps
