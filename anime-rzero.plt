reset session

set tics font ", 18"
set xlabel "" font ", 18" offset 55,0
set ylabel " " font ""
set key outside bottom center maxrows 1 font ", 15" spacing 2 width -10

set xtics ("27/04" 0, "10/05" 13, "23/05" 26, "05/06" 39, "18/06" 52, "01/07" 65, "14/07" 78, "27/07" 91, "09/08" 104, "22/08" 117, "04/09" 130, "17/09" 143, "30/09" 156, "13/10" 169, "13/10" 182, "08/11" 195, "21/11" 208, "04/12" 221, "17/12" 234, "30/12" 247, "12/01" 260, "25/01" 273, "08/02" 286, "20/02" 299, "05/03" 312, "18/03" 325,  "31/03" 338 ) rotate by -30 offset 0,0 font ",18"
set ytics 0.5 font ", 18"

set xrange [0:351]
set yrange [0:5]

set samples 300

set terminal pngcairo size 1920,1080 enhanced background rgb "gray80"

a=1



set style line 1\
	linecolor rgb "gray30"\
	dashtype 2 linewidth 1.25\
	pointtype 0 pointsize 0

set style line 2\
	linecolor rgb "black"\
	linetype 1 linewidth 1.5\
	pointtype 7 pointsize 1.5	
	
f(x) = 1

system('mkdir -p ANIME/anime-rzero')

do for[i=1:3251]{outfile = sprintf('ANIME/anime-rzero/%04.0f.png',i);
		set output outfile;
		plot	f(x) notitle with lines lw 1.5 lc "red" dashtype 7,\
			"MMQ/saida.dat" using 1:2:2 every ::0::i-1 with lines lc rgb "purple" lw 4 title "Spline cúbica",\
			"MMQ/rzero.dat" using 3:2:2 every ::0::(i-1)/130 with points ls 2 title "R_0",\
			"MMQ/rzero.dat" using 3:2:2 every ::0::(i-1)/130 with labels font ",14" textcolor lt -1 rotate by 0 offset 4.5,0.8 notitle 
}

