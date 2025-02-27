function redirection_in() {
	while read input;
	do
		echo $input
	done
} < student_info
redirection_in
