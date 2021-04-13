reset session

set tics font ", 15"
set xlabel "t (days)" font ", 15" offset 65,0.5
set ylabel " " font ""
set key outside bottom center maxrows 3 font ", 15" spacing 0.7 width -12

set bmargin 5

set ytics add (0,500000)

set logscale y
set logscale x

set terminal pngcairo size 1286,641 enhanced font ',10' background rgb "white"
set output "inf-atual-log-ingles.png"

#INIC
set xrange [*:*]
set yrange [1:500000]

set style line 1 linetype 1 linewidth 1 lc rgb variable
set style arrow 1 nohead ls 1 dashtype 2

#		DASHTYPE		DASHTYPE		DASHTYPE		DASHTYPE		DASHTYPE
#				DASHTYPE		DASHTYPE		DASHTYPE		DASHTYPE
#		DASHTYPE		DASHTYPE		DASHTYPE		DASHTYPE		DASHTYPE
#				DASHTYPE		DASHTYPE		DASHTYPE		DASHTYPE
#		DASHTYPE		DASHTYPE		DASHTYPE		DASHTYPE		DASHTYPE
		
plot 	"arquivo_geral_Londrina.dat-ingles.dat" using ($1):($4 - $7) with points pt 6 ps 0.8 lc rgb "black" lw 0.8 title "Dataset: Londrina",\
     	"MMQ/pico_sim.dat" using 2:3:4:5:6 with vectors arrowstyle 1 notitle,\
     	"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 with lines lt rgb "red" lw 3 title "S01",\
	"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) with lines lt rgb "blue" lw 3 title "S02",\
	"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) with lines lt rgb "green" lw 3 title "S03",\
	"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) with lines lt rgb "0xFF1493" lw 3 title "S04",\
	"S05/SAIDAS/EVOL_TEMPORAL_5.dat" using ($1 + 52):($3) with lines lt rgb "purple" lw 3 title "S05",\
	"S06/SAIDAS/EVOL_TEMPORAL_6.dat" using ($1 + 65):($3) with lines lt rgb "yellow" lw 3 title "S06",\
	"S07/SAIDAS/EVOL_TEMPORAL_7.dat" using ($1 + 78):($3) with lines lt rgb "dark-salmon" lw 3 title "S07",\
	"S08/SAIDAS/EVOL_TEMPORAL_8.dat" using ($1 + 91):($3) with lines lt rgb "cyan" lw 3 title "S08",\
	"S09/SAIDAS/EVOL_TEMPORAL_9.dat" using ($1 + 104):($3) with lines lt rgb "orange" lw 3 title "S09",\
	"S10/SAIDAS/EVOL_TEMPORAL_10.dat" using ($1 + 117):($3) with lines lt rgb "salmon" lw 3 title "S10",\
	"S11/SAIDAS/EVOL_TEMPORAL_11.dat" using ($1 + 130):($3) with lines lt rgb "grey40" lw 3 title "S11",\
	"S12/SAIDAS/EVOL_TEMPORAL_12.dat" using ($1 + 143):($3) with lines lt rgb "olive" lw 3 title "S12",\
	"S13/SAIDAS/EVOL_TEMPORAL_13.dat" using ($1 + 156):($3) with lines lt rgb "brown" lw 3 title "S13",\
	"S14/SAIDAS/EVOL_TEMPORAL_14.dat" using ($1 + 169):($3) with lines lt rgb "#018002" lw 3 title "S14",\
	"S15/SAIDAS/EVOL_TEMPORAL_15.dat" using ($1 + 182):($3) with lines lt rgb "#8C0343" lw 3 title "S15",\
 	"MMQ/pico_sim.dat" using 2:5:6 with points pt 7 ps 1.4 lc rgb variable lw 2 notitle ,\
