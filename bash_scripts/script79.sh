#!/bin/bin/env bash
myfunc() {
	trap 'declare -f ${FUNCNAME[0]}' RETURN
	echo 'A simple function'
}
myfunc
