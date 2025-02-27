function redirection_in_ps() {
        read
        while read -a input;
	do
             echo "${input[2]} ${input[8]}"
        done
} < <(ls -ll /)
redirection_in_ps
