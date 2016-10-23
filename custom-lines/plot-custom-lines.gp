set terminal pdfcairo enhanced font "Gill Sans, 20" linewidth 4 rounded dashed
# Linux/Windows users should download the 'Clear Sans' font and
#  use the following line.
# set terminal pdfcairo enhanced font "Clear Sans, 20" linewidth 4 rounded dashed

set style line 80 lc rgb "#202020" lt 1 lw 0.5
# Border: 3 (X & Y axes)
set border 3 back ls 80

set style line 81 lc rgb "#808080" lt 1 lw 0.5 dt 3
set grid back ls 81

# Clone the excellent 'gnuplot-colorbrewer' package from the following URL.
#  https://github.com/aschn/gnuplot-colorbrewer.git
#
# Add the following lines to the '~/.gnuplot' file.
#
# set loadpath                                      \
#     '~/<path-to-gnuplot-colorbrewer>/diverging'   \
#     '~/<path-to-gnuplot-colorbrewer>/qualitative' \
#     '~/<path-to-gnuplot-colorbrewer>/sequential'
#
load 'Set1.plt'

set xtics border in scale 1,0.5 nomirror norotate autojustify
set ytics border in scale 1,0.5 nomirror norotate autojustify

set tics in

set xtics nomirror
set ytics nomirror

set key bottom right
set key samplen 4 spacing 1.2 font ",18"

set log x
set mxtics 10
set xrange [1:1000]

set yrange [0:1]

set ylabel "CDF"
set xlabel "Performance"

data(f)=sprintf("< gzcat %s", f)


set output OUT_FILE
plot data("A.cdf.gz") u 1:2 t 'A' w l ls 3 dt '-',    \
     data("B.cdf.gz") u 1:2 t 'B' w l ls 7 dt '.',    \
     data("C.cdf.gz") u 1:2 t 'C' w l ls 5 dt '_',    \
     data("D.cdf.gz") u 1:2 t 'D' w l ls 1 dt '._.',  \
     data("E.cdf.gz") u 1:2 t 'E' w l ls 2 dt '..-',  \
     data("F.cdf.gz") u 1:2 t 'F' w l ls 4 dt '..-_', \
     data("G.cdf.gz") u 1:2 t 'G' w l ls 8
unset output
