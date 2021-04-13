reset session

set tics font ", 15"
set xlabel "t (dias)" font ", 15" offset 65,0.5
set ylabel " " font ""
set key outside bottom center maxrows 3 font ", 15" spacing 0.7 width -10

set bmargin 5

set xtics 13

set xrange [*:195]
set yrange [0:*]

set terminal pngcairo size 1286,641 enhanced font ',10' background rgb "white"
set output "inf-atual-cort-linha.png"

#linespoints
set style line 1\
	linecolor rgb "black"\
	linetype 1 linewidth 1\
	pointtype 6 pointsize 1.4\

plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) with linespoints linestyle 1 title "DADOS: Londrina",\
	"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 4 title "S01",\
	"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 4 title "S02",\
	"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::13 with lines lt rgb "green" lw 4 title "S03",\
	"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 4 title "S04",\
	"S05/SAIDAS/EVOL_TEMPORAL_5.dat" using ($1 + 52):($3) every ::0::13 with lines lt rgb "purple" lw 4 title "S05",\
	"S06/SAIDAS/EVOL_TEMPORAL_6.dat" using ($1 + 65):($3) every ::0::13 with lines lt rgb "yellow" lw 4 title "S06",\
	"S07/SAIDAS/EVOL_TEMPORAL_7.dat" using ($1 + 78):($3) every ::0::13 with lines lt rgb "dark-salmon" lw 4 title "S07",\
	"S08/SAIDAS/EVOL_TEMPORAL_8.dat" using ($1 + 91):($3) every ::0::13 with lines lt rgb "cyan" lw 4 title "S08",\
	"S09/SAIDAS/EVOL_TEMPORAL_9.dat" using ($1 + 104):($3) every ::0::13 with lines lt rgb "orange" lw 4 title "S09",\
	"S10/SAIDAS/EVOL_TEMPORAL_10.dat" using ($1 + 117):($3) every ::0::13 with lines lt rgb "salmon" lw 4 title "S10",\
	"S11/SAIDAS/EVOL_TEMPORAL_11.dat" using ($1 + 130):($3) every ::0::13 with lines lt rgb "grey40" lw 4 title "S11",\
	"S12/SAIDAS/EVOL_TEMPORAL_12.dat" using ($1 + 143):($3) every ::0::13 with lines lt rgb "olive" lw 4 title "S12",\
	"S13/SAIDAS/EVOL_TEMPORAL_13.dat" using ($1 + 156):($3) every ::0::13 with lines lt rgb "brown" lw 4 title "S13",\
	"S14/SAIDAS/EVOL_TEMPORAL_14.dat" using ($1 + 169):($3) every ::0::13 with lines lt rgb "#018002" lw 4 title "S14",\
	"S15/SAIDAS/EVOL_TEMPORAL_15.dat" using ($1 + 182):($3) every ::0::13 with lines lt rgb "#8C0343" lw 4 title "S15",\
	"arquivo_geral_Londrina-datas.dat" using ($1):($4 - $7) every 13 with impulses lw 1.2 dashtype "-" lc "black" notitle,\
	"arquivo_geral_Londrina-datas.dat" using ($1):($2):($2) every 13::26::182  with labels font ",12" textcolor lt -1 rotate by 45 offset 3,2 notitle,\
	"arquivo_geral_Londrina-datas.dat" every ::0::0 using ($1):($4 - $7):($2) with labels font ",12" textcolor lt -1 rotate by 45 offset 3,2 notitle,\
	"arquivo_geral_Londrina-datas.dat" every ::13::13 using ($1):($4 - $7):($2) with labels font ",12" textcolor lt -1 rotate by 45 offset 3,1.7 notitle,\
#	"arquivo_geral_Londrina-datas.dat" every ::26::26 using ($1):($4 - $7):($2) with labels font ",12" textcolor lt -1 rotate by -45 offset 3,-1.7 notitle,\
#	"arquivo_geral_Londrina-datas.dat" every ::39::39 using ($1):($4 - $7):($2) with labels font ",12" textcolor lt -1 rotate by -45 offset 3,-1.7 notitle,\
#	"arquivo_geral_Londrina-datas.dat" every ::52::52 using ($1):($4 - $7):($2) with labels font ",12" textcolor lt -1 rotate by -45 offset 2,-1.7 notitle,\
#	"arquivo_geral_Londrina-datas.dat" every ::65::65 using ($1):($4 - $7):($2) with labels font ",12" textcolor lt -1 rotate by 90 offset 0.8,1.9 notitle,\
#	"arquivo_geral_Londrina-datas.dat" every ::78::78 using ($1):($4 - $7):($2) with labels font ",12" textcolor lt -1 rotate by -45 offset 2,-1.7 notitle,\
#	"arquivo_geral_Londrina-datas.dat" every ::91::91 using ($1):($4 - $7):($2) with labels font ",12" textcolor lt -1 rotate by 90 offset 0,2 notitle,\
#	"arquivo_geral_Londrina-datas.dat" every ::104::104 using ($1):($4 - $7):($2) with labels font ",12" textcolor lt -1 rotate by 45 offset 2.2,1.6 notitle,\
#	"arquivo_geral_Londrina-datas.dat" every ::117::117 using ($1):($4 - $7):($2) with labels font ",12" textcolor lt -1 rotate by 0 offset -4.5,0 notitle,\
#	"arquivo_geral_Londrina-datas.dat" every ::130::130 using ($1):($4 - $7):($2) with labels font ",12" textcolor lt -1 rotate by 90 offset 0,-2 notitle,\
#	"arquivo_geral_Londrina-datas.dat" every ::143::143 using ($1):($4 - $7):($2) with labels font ",12" textcolor lt -1 rotate by 30 offset -3,-1 notitle,\
#	"arquivo_geral_Londrina-datas.dat" every ::156::156 using ($1):($4 - $7):($2) with labels font ",12" textcolor lt -1 rotate by 60 offset -2,-1.7 notitle,\
