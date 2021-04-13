reset session

set tics font ", 15"
set xlabel "Número da Simulação" font ", 15" offset 55,0
set ylabel " " font ""
set key outside bottom center maxrows 1 font ", 15"

set xtics 1
set ytics 20000

set xrange [0:20]
set yrange [-10000:180000]

set terminal pngcairo size 1286,641 enhanced font ',10' background rgb "white"
set output "pico-sim.png"

a=1
b=1

f(x) = a/x + b


set style line 1\
	linecolor rgb "gray30"\
	dashtype 2 linewidth 1.25\
	pointtype 0 pointsize 0

set style line 2\
	linecolor rgb "black"\
	linetype 1 linewidth 1.5\
	pointtype 7 pointsize 1.5	
	
fit f(x) 'MMQ/pico_sim.dat' using 1:5 via a,b

plot	"MMQ/pico_sim.dat" using 1:5:5 with labels font ",13" textcolor lt -1 rotate by 15 offset 5.3,0.8 notitle,\
	"MMQ/pico_sim.dat" using 1:5:5 with linespoints ls 1 notitle,\
	"MMQ/pico_sim.dat" using 1:5:5 with points ls 2 title "Picos",\
	f(x) lw 2 lc rgb "dark-red" title "a/x+b"

