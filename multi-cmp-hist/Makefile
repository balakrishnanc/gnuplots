
sys-perf-comparison.pdf: plot-cmp-hist.gp
	@gnuplot -e 'OUT_FILE="$@"' $(word 1, $^)
