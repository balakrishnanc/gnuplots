set terminal pdfcairo enhanced font "Gill Sans, 16" linewidth 2 rounded dashed
# Linux/Windows users should download the 'Clear Sans' font and
#  use the following line.
# set terminal pdfcairo enhanced font "Clear Sans, 16" linewidth 2 rounded dashed

set style line 80 lc rgb "#202020" lt 1 lw 1
# Border: 2 (Only Y-axis)
set border 2 back ls 80

set style line 81 lc rgb "#202020" lt 0 lw 0.5
set grid back ls 81

set xtics border in scale 1,0.5 nomirror norotate autojustify
set ytics border in scale 1,0.5 nomirror norotate autojustify

set tics in

# Remove x-axis tic marks.
set xtics scale 0

# Based on colorbrewer2.org's Set1 palette.
set style line 1 lt 1 lc rgb "#e41a1c" lw 1.0
set style line 2 lt 1 lc rgb "#377eb8" lw 1.0
set style line 3 lt 1 lc rgb "#4daf4a" lw 1.0
set style line 4 lt 1 lc rgb "#984ea3" lw 1.0
set style line 5 lt 1 lc rgb "#ff7f00" lw 1.0
set style line 6 lt 1 lc rgb "#a65628" lw 1.0
set style line 9 lt 1 lc rgb "#202020" lw 1.0

set style data histograms
set style histogram cluster gap 1
set style fill pattern border
set boxwidth 0.7

set key outside left horizontal
# Controls the length of bars (i.e., samples) in the key.
set key samplen 2

set xlabel "Systems/Methods"

set logscale y
set yrange [1:30]
set mytics 10

set ylabel "Performance" offset 2,0

# Pass the output file name via command-line arguments.
set output OUT_FILE
plot \
        'sys-A.txt' u 2:xtic(1) t 'Median' w hist ls 1 fill solid, \
	             '' u 3         t '80^{th}%' w hist ls 1 fill pattern 0, \
                 '' u 4         t '95^{th}%' w hist ls 1 fill pattern 2, \
        'sys-B.txt' u 2:xtic(1) not w hist ls 2 fill solid, \
                 '' u 3         not w hist ls 2 fill pattern 0, \
                 '' u 4         not w hist ls 2 fill pattern 2
unset output
