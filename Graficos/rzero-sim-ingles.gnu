reset session

set tics font ", 15"
set xlabel "Simulation number" font ", 15" offset 55,0
set ylabel " " font ""
set key outside bottom center maxrows 1 font ", 15"

set xtics 1
set ytics 0.5

set xrange [0:16]
set yrange [0:5]

set samples 300

set terminal pngcairo size 1286,641 enhanced font ',10' background rgb "white"
set output "rzero-sim-ingles.png"

a=1
b=1


set style line 1\
	linecolor rgb "gray30"\
	dashtype 2 linewidth 1.25\
	pointtype 0 pointsize 0

set style line 2\
	linecolor rgb "black"\
	linetype 1 linewidth 1.5\
	pointtype 7 pointsize 1.5	
	
f(x) = 1

plot	f(x) notitle with lines lw 2 dashtype 7,\
	"MMQ/rzero.dat" using 1:2 smooth csplines title "Cubic spline",\
	"MMQ/rzero.dat" using 1:2:2 with points ls 2 title "R_0",\
	"MMQ/rzero.dat" every ::0::11 using 1:2:2 with labels font ",14" textcolor lt -1 rotate by 0 offset 4.5,0 notitle,\
	"MMQ/rzero.dat" every ::12::14 using 1:2:2 with labels font ",14" textcolor lt -1 rotate by 0 offset 4,0.8 notitle
