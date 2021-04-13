reset

set isosamples 200

set tics font ", 14"
set xlabel "t (dias)" font ", 14" offset 60,0
set ylabel " " font ""
set key outside bottom center maxrows 1 font ", 15"

set logscale y

set xrange [-10:365]
set yrange [1:170000]

set terminal pngcairo size 1280,720 enhanced font ',10' background rgb "white"

set encoding utf8



do for [i = 1:2]{
    if(i==1){
        outfile = sprintf('anime%04.0f.png',i);
		set output outfile;
        plot    "ANIME/DATA/data.dat" using 1:3 with lines lt rgb "blue" lw 3 title "Simulação 02 Dia 26" ,\
            "arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::26 with points pt 6 ps 1.25 lc rgb "gray30" lw 1.25 title "Dados: Londrina",\
            "arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::26::26 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
            "ANIME/DATA/data.dat" using 1:3 every ::0::26 with lines lt rgb "black" lw 3.25 notitle,\
            "arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
            "arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",14" textcolor lt -1 rotate by 0 offset 5.5,-4 notitle,\
            "arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::26::26 with labels font ",14" textcolor lt -1 rotate by 0 offset 5.5,-4 notitle
    }
    if(i==2){
        outfile = sprintf('anime%04.0f.png',i);
		set output outfile;
        plot    "ANIME/DATA/data.dat" using 1:14 with lines lt rgb "brown" lw 3 title "Simulação 13 Dia 169" ,\
            "arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::13*13 with points pt 6 ps 1.25 lc rgb "gray30" lw 1.25 title "Dados: Londrina",\
            "arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::13*13::13*13 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
            "ANIME/DATA/data.dat" using 1:14 every ::0::13*13 with lines lt rgb "black" lw 3.25 notitle,\
            "arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
            "arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",14" textcolor lt -1 rotate by 0 offset 5.5,-4 notitle,\
            "arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::13*13::13*13 with labels font ",14" textcolor lt -1 rotate by 0 offset 5.5,-4 notitle
    }
}
