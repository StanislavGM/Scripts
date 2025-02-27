#!/bin/bash
filename=script1.sh
[ -f "$filename"  ] && foo() { rm -f "$filename"; echo 'File "$filename" deleted'; } ||
	foo() { echo File "$filename" not found; touch bar1; }
foo
