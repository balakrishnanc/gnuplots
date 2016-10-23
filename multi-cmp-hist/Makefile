
sys-perf-comparison.pdf: plot-cmp-hist.gp sys-A.txt sys-B.txt
	@gnuplot -e 'OUT_FILE="$@"' $(word 1, $^)
