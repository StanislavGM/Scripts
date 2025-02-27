function redirection_out() {
	declare -a output=("baeldung" "lorem" "ipsum")
	for element in "${output[@]}"
	do
		echo $element
	done
} > stdout_file_from_script92
redirection_out
