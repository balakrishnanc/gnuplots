
sys-perf-stacked-comparison.pdf: plot-stack-cmp-hist.gp \
	M1.txt M2.txt M3.txt M4.txt M5.txt M6.txt
	@gnuplot -e 'OUT_FILE="$@"' $(word 1, $^)
