
cb-line.pdf: plot-cb-line.gp A.cdf.gz B.cdf.gz C.cdf.gz \
	D.cdf.gz E.cdf.gz F.cdf.gz G.cdf.gz
	@gnuplot -e 'OUT_FILE="$@"' $(word 1, $^)
