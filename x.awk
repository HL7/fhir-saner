/[A-Z][A-Z]+/ {
	for (i = 1; i <= NF; i++) {
		if ($i ~ /[A-Z][A-Z]+/) print $i;
	}
}