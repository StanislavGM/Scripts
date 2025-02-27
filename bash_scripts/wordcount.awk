BEGIN {
	#Ignore 1 or more consecutive
	#occurence of the characters
	#in the character group below
	FS="[.,:;()<>{}@!\"'\t]+";
}
{
	for (i = 1; i <= NF; i++) {
		if ($i != " ") {
			words[$i]++;
		}
	}
}
END {
	sort_head="sort -k2 -nr | head -n 20";
	for (word in words) {
		print "%s\t%d\n", word, words[word] | sort_head;
	}
	close (sort_head);
}
