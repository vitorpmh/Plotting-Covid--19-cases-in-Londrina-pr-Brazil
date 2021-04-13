reset

set isosamples 200
set samples 200

set tics font ", 18"
set xlabel "t (dias)" font ", 18" offset 55,0.5
set ylabel " " font " "
set key outside bottom center maxrows 1 font ", 22" spacing 0.7 width -11 samplen 2


set xtics 13

set xrange [0:338]
set yrange [1:1000]

set terminal pngcairo size 1920,1080 enhanced font 'Verdana,18' background rgb "gray80"

system('mkdir -p ANIME/anime-inf-cort')

a=0
b=13

set style line 1\
	linecolor rgb "gray30"\
	linetype 1 linewidth 2\
	pointtype 6 pointsize 2\

do for[i=1:26]{
	if(i==1){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1);
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::13*(i-1)::(t+13*(i-1)) with lines lt rgb "red" lw 5 title "S01"
		}
	}
	if(i==2){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::t with lines lt rgb "blue" lw 5 title "S02";
		}
	}
	if(i==3){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S02",\
			"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::t with lines lt rgb "green" lw 5 title "S03"
		}
	}
	if(i==4){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S02",\
			"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S03",\
			"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) every ::0::t with lines lt rgb "0xFF1493" lw 5 title "S04"
		}
	}
	if(i==5){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S02",\
			"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S03",\
			"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S04",\
			"S05/SAIDAS/EVOL_TEMPORAL_5.dat" using ($1 + 52):($3) every ::0::t with lines lt rgb "purple" lw 5 title "S05"
		}
	}
	if(i==6){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S02",\
			"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S03",\
			"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S04",\
			"S05/SAIDAS/EVOL_TEMPORAL_5.dat" using ($1 + 52):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S05",\
			"S06/SAIDAS/EVOL_TEMPORAL_6.dat" using ($1 + 65):($3) every ::0::t with lines lt rgb "yellow" lw 5 title "S06"
		}
	}
	if(i==7){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S02",\
			"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S03",\
			"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S04",\
			"S05/SAIDAS/EVOL_TEMPORAL_5.dat" using ($1 + 52):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S05",\
			"S06/SAIDAS/EVOL_TEMPORAL_6.dat" using ($1 + 65):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S06",\
			"S07/SAIDAS/EVOL_TEMPORAL_7.dat" using ($1 + 78):($3) every ::0::t with lines lt rgb "dark-salmon" lw 5 title "S07"
		}
	}
	if(i==8){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S02",\
			"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S03",\
			"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S04",\
			"S05/SAIDAS/EVOL_TEMPORAL_5.dat" using ($1 + 52):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S05",\
			"S06/SAIDAS/EVOL_TEMPORAL_6.dat" using ($1 + 65):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S06",\
			"S07/SAIDAS/EVOL_TEMPORAL_7.dat" using ($1 + 78):($3) every ::0::13 with lines lt rgb "dark-salmon" lw 5 notitle "S07",\
			"S08/SAIDAS/EVOL_TEMPORAL_8.dat" using ($1 + 91):($3) every ::0::t with lines lt rgb "cyan" lw 5 title "S08"
		}
	}
	if(i==9){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S02",\
			"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S03",\
			"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S04",\
			"S05/SAIDAS/EVOL_TEMPORAL_5.dat" using ($1 + 52):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S05",\
			"S06/SAIDAS/EVOL_TEMPORAL_6.dat" using ($1 + 65):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S06",\
			"S07/SAIDAS/EVOL_TEMPORAL_7.dat" using ($1 + 78):($3) every ::0::13 with lines lt rgb "dark-salmon" lw 5 notitle "S07",\
			"S08/SAIDAS/EVOL_TEMPORAL_8.dat" using ($1 + 91):($3) every ::0::13 with lines lt rgb "cyan" lw 5 notitle "S08",\
			"S09/SAIDAS/EVOL_TEMPORAL_9.dat" using ($1 + 104):($3) every ::0::t with lines lt rgb "orange" lw 5 title "S09"
		}
	}
	if(i==10){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S02",\
			"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S03",\
			"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S04",\
			"S05/SAIDAS/EVOL_TEMPORAL_5.dat" using ($1 + 52):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S05",\
			"S06/SAIDAS/EVOL_TEMPORAL_6.dat" using ($1 + 65):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S06",\
			"S07/SAIDAS/EVOL_TEMPORAL_7.dat" using ($1 + 78):($3) every ::0::13 with lines lt rgb "dark-salmon" lw 5 notitle "S07",\
			"S08/SAIDAS/EVOL_TEMPORAL_8.dat" using ($1 + 91):($3) every ::0::13 with lines lt rgb "cyan" lw 5 notitle "S08",\
			"S09/SAIDAS/EVOL_TEMPORAL_9.dat" using ($1 + 104):($3) every ::0::13 with lines lt rgb "orange" lw 5 notitle "S09",\
			"S10/SAIDAS/EVOL_TEMPORAL_10.dat" using ($1 + 117):($3) every ::0::t with lines lt rgb "salmon" lw 5 title "S10",\
		}
	}
	if(i==11){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S02",\
			"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S03",\
			"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S04",\
			"S05/SAIDAS/EVOL_TEMPORAL_5.dat" using ($1 + 52):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S05",\
			"S06/SAIDAS/EVOL_TEMPORAL_6.dat" using ($1 + 65):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S06",\
			"S07/SAIDAS/EVOL_TEMPORAL_7.dat" using ($1 + 78):($3) every ::0::13 with lines lt rgb "dark-salmon" lw 5 notitle "S07",\
			"S08/SAIDAS/EVOL_TEMPORAL_8.dat" using ($1 + 91):($3) every ::0::13 with lines lt rgb "cyan" lw 5 notitle "S08",\
			"S09/SAIDAS/EVOL_TEMPORAL_9.dat" using ($1 + 104):($3) every ::0::13 with lines lt rgb "orange" lw 5 notitle "S09",\
			"S10/SAIDAS/EVOL_TEMPORAL_10.dat" using ($1 + 117):($3) every ::0::13 with lines lt rgb "salmon" lw 5 notitle "S10",\
			"S11/SAIDAS/EVOL_TEMPORAL_11.dat" using ($1 + 130):($3) every ::0::t with lines lt rgb "white" lw 5 title "S11"
		}
	}
	if(i==12){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S02",\
			"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S03",\
			"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S04",\
			"S05/SAIDAS/EVOL_TEMPORAL_5.dat" using ($1 + 52):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S05",\
			"S06/SAIDAS/EVOL_TEMPORAL_6.dat" using ($1 + 65):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S06",\
			"S07/SAIDAS/EVOL_TEMPORAL_7.dat" using ($1 + 78):($3) every ::0::13 with lines lt rgb "dark-salmon" lw 5 notitle "S07",\
			"S08/SAIDAS/EVOL_TEMPORAL_8.dat" using ($1 + 91):($3) every ::0::13 with lines lt rgb "cyan" lw 5 notitle "S08",\
			"S09/SAIDAS/EVOL_TEMPORAL_9.dat" using ($1 + 104):($3) every ::0::13 with lines lt rgb "orange" lw 5 notitle "S09",\
			"S10/SAIDAS/EVOL_TEMPORAL_10.dat" using ($1 + 117):($3) every ::0::13 with lines lt rgb "salmon" lw 5 notitle "S10",\
			"S11/SAIDAS/EVOL_TEMPORAL_11.dat" using ($1 + 130):($3) every ::0::13 with lines lt rgb "white" lw 5 notitle "S11",\
			"S12/SAIDAS/EVOL_TEMPORAL_12.dat" using ($1 + 143):($3) every ::0::t with lines lt rgb "olive" lw 5 title "S12"
		}
	}
	if(i==13){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S02",\
			"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S03",\
			"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S04",\
			"S05/SAIDAS/EVOL_TEMPORAL_5.dat" using ($1 + 52):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S05",\
			"S06/SAIDAS/EVOL_TEMPORAL_6.dat" using ($1 + 65):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S06",\
			"S07/SAIDAS/EVOL_TEMPORAL_7.dat" using ($1 + 78):($3) every ::0::13 with lines lt rgb "dark-salmon" lw 5 notitle "S07",\
			"S08/SAIDAS/EVOL_TEMPORAL_8.dat" using ($1 + 91):($3) every ::0::13 with lines lt rgb "cyan" lw 5 notitle "S08",\
			"S09/SAIDAS/EVOL_TEMPORAL_9.dat" using ($1 + 104):($3) every ::0::13 with lines lt rgb "orange" lw 5 notitle "S09",\
			"S10/SAIDAS/EVOL_TEMPORAL_10.dat" using ($1 + 117):($3) every ::0::13 with lines lt rgb "salmon" lw 5 notitle "S10",\
			"S11/SAIDAS/EVOL_TEMPORAL_11.dat" using ($1 + 130):($3) every ::0::13 with lines lt rgb "white" lw 5 notitle "S11",\
			"S12/SAIDAS/EVOL_TEMPORAL_12.dat" using ($1 + 143):($3) every ::0::13 with lines lt rgb "olive" lw 5 notitle "S12",\
			"S13/SAIDAS/EVOL_TEMPORAL_13.dat" using ($1 + 156):($3) every ::0::t with lines lt rgb "brown" lw 5 title "S13"
		}
	}
	if(i==14){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S02",\
			"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S03",\
			"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S04",\
			"S05/SAIDAS/EVOL_TEMPORAL_5.dat" using ($1 + 52):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S05",\
			"S06/SAIDAS/EVOL_TEMPORAL_6.dat" using ($1 + 65):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S06",\
			"S07/SAIDAS/EVOL_TEMPORAL_7.dat" using ($1 + 78):($3) every ::0::13 with lines lt rgb "dark-salmon" lw 5 notitle "S07",\
			"S08/SAIDAS/EVOL_TEMPORAL_8.dat" using ($1 + 91):($3) every ::0::13 with lines lt rgb "cyan" lw 5 notitle "S08",\
			"S09/SAIDAS/EVOL_TEMPORAL_9.dat" using ($1 + 104):($3) every ::0::13 with lines lt rgb "orange" lw 5 notitle "S09",\
			"S10/SAIDAS/EVOL_TEMPORAL_10.dat" using ($1 + 117):($3) every ::0::13 with lines lt rgb "salmon" lw 5 notitle "S10",\
			"S11/SAIDAS/EVOL_TEMPORAL_11.dat" using ($1 + 130):($3) every ::0::13 with lines lt rgb "white" lw 5 notitle "S11",\
			"S12/SAIDAS/EVOL_TEMPORAL_12.dat" using ($1 + 143):($3) every ::0::13 with lines lt rgb "olive" lw 5 notitle "S12",\
			"S13/SAIDAS/EVOL_TEMPORAL_13.dat" using ($1 + 156):($3) every ::0::13 with lines lt rgb "brown" lw 5 notitle "S13",\
			"S14/SAIDAS/EVOL_TEMPORAL_14.dat" using ($1 + 169):($3) every ::0::t with lines lt rgb "#018002" lw 5 title "S14"
		}
	}
	if(i==15){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S02",\
			"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S03",\
			"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S04",\
			"S05/SAIDAS/EVOL_TEMPORAL_5.dat" using ($1 + 52):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S05",\
			"S06/SAIDAS/EVOL_TEMPORAL_6.dat" using ($1 + 65):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S06",\
			"S07/SAIDAS/EVOL_TEMPORAL_7.dat" using ($1 + 78):($3) every ::0::13 with lines lt rgb "dark-salmon" lw 5 notitle "S07",\
			"S08/SAIDAS/EVOL_TEMPORAL_8.dat" using ($1 + 91):($3) every ::0::13 with lines lt rgb "cyan" lw 5 notitle "S08",\
			"S09/SAIDAS/EVOL_TEMPORAL_9.dat" using ($1 + 104):($3) every ::0::13 with lines lt rgb "orange" lw 5 notitle "S09",\
			"S10/SAIDAS/EVOL_TEMPORAL_10.dat" using ($1 + 117):($3) every ::0::13 with lines lt rgb "salmon" lw 5 notitle "S10",\
			"S11/SAIDAS/EVOL_TEMPORAL_11.dat" using ($1 + 130):($3) every ::0::13 with lines lt rgb "white" lw 5 notitle "S11",\
			"S12/SAIDAS/EVOL_TEMPORAL_12.dat" using ($1 + 143):($3) every ::0::13 with lines lt rgb "olive" lw 5 notitle "S12",\
			"S13/SAIDAS/EVOL_TEMPORAL_13.dat" using ($1 + 156):($3) every ::0::13 with lines lt rgb "brown" lw 5 notitle "S13",\
			"S14/SAIDAS/EVOL_TEMPORAL_14.dat" using ($1 + 169):($3) every ::0::13 with lines lt rgb "#018002" lw 5 notitle "S14",\
			"S15/SAIDAS/EVOL_TEMPORAL_15.dat" using ($1 + 182):($3) every ::0::t with lines lt rgb "#8C0343" lw 5 title "S15"
		}
	}
	if(i==16){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S02",\
			"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S03",\
			"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S04",\
			"S05/SAIDAS/EVOL_TEMPORAL_5.dat" using ($1 + 52):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S05",\
			"S06/SAIDAS/EVOL_TEMPORAL_6.dat" using ($1 + 65):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S06",\
			"S07/SAIDAS/EVOL_TEMPORAL_7.dat" using ($1 + 78):($3) every ::0::13 with lines lt rgb "dark-salmon" lw 5 notitle "S07",\
			"S08/SAIDAS/EVOL_TEMPORAL_8.dat" using ($1 + 91):($3) every ::0::13 with lines lt rgb "cyan" lw 5 notitle "S08",\
			"S09/SAIDAS/EVOL_TEMPORAL_9.dat" using ($1 + 104):($3) every ::0::13 with lines lt rgb "orange" lw 5 notitle "S09",\
			"S10/SAIDAS/EVOL_TEMPORAL_10.dat" using ($1 + 117):($3) every ::0::13 with lines lt rgb "salmon" lw 5 notitle "S10",\
			"S11/SAIDAS/EVOL_TEMPORAL_11.dat" using ($1 + 130):($3) every ::0::13 with lines lt rgb "white" lw 5 notitle "S11",\
			"S12/SAIDAS/EVOL_TEMPORAL_12.dat" using ($1 + 143):($3) every ::0::13 with lines lt rgb "olive" lw 5 notitle "S12",\
			"S13/SAIDAS/EVOL_TEMPORAL_13.dat" using ($1 + 156):($3) every ::0::13 with lines lt rgb "brown" lw 5 notitle "S13",\
			"S14/SAIDAS/EVOL_TEMPORAL_14.dat" using ($1 + 169):($3) every ::0::13 with lines lt rgb "#018002" lw 5 notitle "S14",\
			"S15/SAIDAS/EVOL_TEMPORAL_15.dat" using ($1 + 182):($3) every ::0::13 with lines lt rgb "#8C0343" lw 5 notitle "S15",\
			"S16/SAIDAS/EVOL_TEMPORAL_16.dat" using ($1 + 195):($3) every ::0::t with lines lt rgb "red" lw 5 title "S16"
		}
	}
	if(i==17){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S02",\
			"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S03",\
			"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S04",\
			"S05/SAIDAS/EVOL_TEMPORAL_5.dat" using ($1 + 52):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S05",\
			"S06/SAIDAS/EVOL_TEMPORAL_6.dat" using ($1 + 65):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S06",\
			"S07/SAIDAS/EVOL_TEMPORAL_7.dat" using ($1 + 78):($3) every ::0::13 with lines lt rgb "dark-salmon" lw 5 notitle "S07",\
			"S08/SAIDAS/EVOL_TEMPORAL_8.dat" using ($1 + 91):($3) every ::0::13 with lines lt rgb "cyan" lw 5 notitle "S08",\
			"S09/SAIDAS/EVOL_TEMPORAL_9.dat" using ($1 + 104):($3) every ::0::13 with lines lt rgb "orange" lw 5 notitle "S09",\
			"S10/SAIDAS/EVOL_TEMPORAL_10.dat" using ($1 + 117):($3) every ::0::13 with lines lt rgb "salmon" lw 5 notitle "S10",\
			"S11/SAIDAS/EVOL_TEMPORAL_11.dat" using ($1 + 130):($3) every ::0::13 with lines lt rgb "white" lw 5 notitle "S11",\
			"S12/SAIDAS/EVOL_TEMPORAL_12.dat" using ($1 + 143):($3) every ::0::13 with lines lt rgb "olive" lw 5 notitle "S12",\
			"S13/SAIDAS/EVOL_TEMPORAL_13.dat" using ($1 + 156):($3) every ::0::13 with lines lt rgb "brown" lw 5 notitle "S13",\
			"S14/SAIDAS/EVOL_TEMPORAL_14.dat" using ($1 + 169):($3) every ::0::13 with lines lt rgb "#018002" lw 5 notitle "S14",\
			"S15/SAIDAS/EVOL_TEMPORAL_15.dat" using ($1 + 182):($3) every ::0::13 with lines lt rgb "#8C0343" lw 5 notitle "S15",\
			"S16/SAIDAS/EVOL_TEMPORAL_16.dat" using ($1 + 195):($3) every ::0::13 with lines lt rgb "red" lw 5 notitle "S16",\
			"S17/SAIDAS/EVOL_TEMPORAL_17.dat" using ($1 + 208):($3) every ::0::t with lines lt rgb "blue" lw 5 title "S17"
		}
	}
	if(i==18){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S02",\
			"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S03",\
			"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S04",\
			"S05/SAIDAS/EVOL_TEMPORAL_5.dat" using ($1 + 52):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S05",\
			"S06/SAIDAS/EVOL_TEMPORAL_6.dat" using ($1 + 65):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S06",\
			"S07/SAIDAS/EVOL_TEMPORAL_7.dat" using ($1 + 78):($3) every ::0::13 with lines lt rgb "dark-salmon" lw 5 notitle "S07",\
			"S08/SAIDAS/EVOL_TEMPORAL_8.dat" using ($1 + 91):($3) every ::0::13 with lines lt rgb "cyan" lw 5 notitle "S08",\
			"S09/SAIDAS/EVOL_TEMPORAL_9.dat" using ($1 + 104):($3) every ::0::13 with lines lt rgb "orange" lw 5 notitle "S09",\
			"S10/SAIDAS/EVOL_TEMPORAL_10.dat" using ($1 + 117):($3) every ::0::13 with lines lt rgb "salmon" lw 5 notitle "S10",\
			"S11/SAIDAS/EVOL_TEMPORAL_11.dat" using ($1 + 130):($3) every ::0::13 with lines lt rgb "white" lw 5 notitle "S11",\
			"S12/SAIDAS/EVOL_TEMPORAL_12.dat" using ($1 + 143):($3) every ::0::13 with lines lt rgb "olive" lw 5 notitle "S12",\
			"S13/SAIDAS/EVOL_TEMPORAL_13.dat" using ($1 + 156):($3) every ::0::13 with lines lt rgb "brown" lw 5 notitle "S13",\
			"S14/SAIDAS/EVOL_TEMPORAL_14.dat" using ($1 + 169):($3) every ::0::13 with lines lt rgb "#018002" lw 5 notitle "S14",\
			"S15/SAIDAS/EVOL_TEMPORAL_15.dat" using ($1 + 182):($3) every ::0::13 with lines lt rgb "#8C0343" lw 5 notitle "S15",\
			"S16/SAIDAS/EVOL_TEMPORAL_16.dat" using ($1 + 195):($3) every ::0::13 with lines lt rgb "red" lw 5 notitle "S16",\
			"S17/SAIDAS/EVOL_TEMPORAL_17.dat" using ($1 + 208):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S17",\
			"S18/SAIDAS/EVOL_TEMPORAL_18.dat" using ($1 + 221):($3) every ::0::t with lines lt rgb "green" lw 5 title "S18"
		}
	}
	if(i==19){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S02",\
			"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S03",\
			"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S04",\
			"S05/SAIDAS/EVOL_TEMPORAL_5.dat" using ($1 + 52):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S05",\
			"S06/SAIDAS/EVOL_TEMPORAL_6.dat" using ($1 + 65):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S06",\
			"S07/SAIDAS/EVOL_TEMPORAL_7.dat" using ($1 + 78):($3) every ::0::13 with lines lt rgb "dark-salmon" lw 5 notitle "S07",\
			"S08/SAIDAS/EVOL_TEMPORAL_8.dat" using ($1 + 91):($3) every ::0::13 with lines lt rgb "cyan" lw 5 notitle "S08",\
			"S09/SAIDAS/EVOL_TEMPORAL_9.dat" using ($1 + 104):($3) every ::0::13 with lines lt rgb "orange" lw 5 notitle "S09",\
			"S10/SAIDAS/EVOL_TEMPORAL_10.dat" using ($1 + 117):($3) every ::0::13 with lines lt rgb "salmon" lw 5 notitle "S10",\
			"S11/SAIDAS/EVOL_TEMPORAL_11.dat" using ($1 + 130):($3) every ::0::13 with lines lt rgb "white" lw 5 notitle "S11",\
			"S12/SAIDAS/EVOL_TEMPORAL_12.dat" using ($1 + 143):($3) every ::0::13 with lines lt rgb "olive" lw 5 notitle "S12",\
			"S13/SAIDAS/EVOL_TEMPORAL_13.dat" using ($1 + 156):($3) every ::0::13 with lines lt rgb "brown" lw 5 notitle "S13",\
			"S14/SAIDAS/EVOL_TEMPORAL_14.dat" using ($1 + 169):($3) every ::0::13 with lines lt rgb "#018002" lw 5 notitle "S14",\
			"S15/SAIDAS/EVOL_TEMPORAL_15.dat" using ($1 + 182):($3) every ::0::13 with lines lt rgb "#8C0343" lw 5 notitle "S15",\
			"S16/SAIDAS/EVOL_TEMPORAL_16.dat" using ($1 + 195):($3) every ::0::13 with lines lt rgb "red" lw 5 notitle "S16",\
			"S17/SAIDAS/EVOL_TEMPORAL_17.dat" using ($1 + 208):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S17",\
			"S18/SAIDAS/EVOL_TEMPORAL_18.dat" using ($1 + 221):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S18",\
			"S19/SAIDAS/EVOL_TEMPORAL_19.dat" using ($1 + 234):($3) every ::0::t with lines lt rgb "0xFF1493" lw 5 title "S19",\
		}
	}
	if(i==20){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S02",\
			"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S03",\
			"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S04",\
			"S05/SAIDAS/EVOL_TEMPORAL_5.dat" using ($1 + 52):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S05",\
			"S06/SAIDAS/EVOL_TEMPORAL_6.dat" using ($1 + 65):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S06",\
			"S07/SAIDAS/EVOL_TEMPORAL_7.dat" using ($1 + 78):($3) every ::0::13 with lines lt rgb "dark-salmon" lw 5 notitle "S07",\
			"S08/SAIDAS/EVOL_TEMPORAL_8.dat" using ($1 + 91):($3) every ::0::13 with lines lt rgb "cyan" lw 5 notitle "S08",\
			"S09/SAIDAS/EVOL_TEMPORAL_9.dat" using ($1 + 104):($3) every ::0::13 with lines lt rgb "orange" lw 5 notitle "S09",\
			"S10/SAIDAS/EVOL_TEMPORAL_10.dat" using ($1 + 117):($3) every ::0::13 with lines lt rgb "salmon" lw 5 notitle "S10",\
			"S11/SAIDAS/EVOL_TEMPORAL_11.dat" using ($1 + 130):($3) every ::0::13 with lines lt rgb "white" lw 5 notitle "S11",\
			"S12/SAIDAS/EVOL_TEMPORAL_12.dat" using ($1 + 143):($3) every ::0::13 with lines lt rgb "olive" lw 5 notitle "S12",\
			"S13/SAIDAS/EVOL_TEMPORAL_13.dat" using ($1 + 156):($3) every ::0::13 with lines lt rgb "brown" lw 5 notitle "S13",\
			"S14/SAIDAS/EVOL_TEMPORAL_14.dat" using ($1 + 169):($3) every ::0::13 with lines lt rgb "#018002" lw 5 notitle "S14",\
			"S15/SAIDAS/EVOL_TEMPORAL_15.dat" using ($1 + 182):($3) every ::0::13 with lines lt rgb "#8C0343" lw 5 notitle "S15",\
			"S16/SAIDAS/EVOL_TEMPORAL_16.dat" using ($1 + 195):($3) every ::0::13 with lines lt rgb "red" lw 5 notitle "S16",\
			"S17/SAIDAS/EVOL_TEMPORAL_17.dat" using ($1 + 208):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S17",\
			"S18/SAIDAS/EVOL_TEMPORAL_18.dat" using ($1 + 221):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S18",\
			"S19/SAIDAS/EVOL_TEMPORAL_19.dat" using ($1 + 234):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S19",\
			"S20/SAIDAS/EVOL_TEMPORAL_20.dat" using ($1 + 247):($3) every ::0::t with lines lt rgb "purple" lw 5 title "S20",\
		}
	}
	if(i==21){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S02",\
			"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S03",\
			"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S04",\
			"S05/SAIDAS/EVOL_TEMPORAL_5.dat" using ($1 + 52):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S05",\
			"S06/SAIDAS/EVOL_TEMPORAL_6.dat" using ($1 + 65):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S06",\
			"S07/SAIDAS/EVOL_TEMPORAL_7.dat" using ($1 + 78):($3) every ::0::13 with lines lt rgb "dark-salmon" lw 5 notitle "S07",\
			"S08/SAIDAS/EVOL_TEMPORAL_8.dat" using ($1 + 91):($3) every ::0::13 with lines lt rgb "cyan" lw 5 notitle "S08",\
			"S09/SAIDAS/EVOL_TEMPORAL_9.dat" using ($1 + 104):($3) every ::0::13 with lines lt rgb "orange" lw 5 notitle "S09",\
			"S10/SAIDAS/EVOL_TEMPORAL_10.dat" using ($1 + 117):($3) every ::0::13 with lines lt rgb "salmon" lw 5 notitle "S10",\
			"S11/SAIDAS/EVOL_TEMPORAL_11.dat" using ($1 + 130):($3) every ::0::13 with lines lt rgb "white" lw 5 notitle "S11",\
			"S12/SAIDAS/EVOL_TEMPORAL_12.dat" using ($1 + 143):($3) every ::0::13 with lines lt rgb "olive" lw 5 notitle "S12",\
			"S13/SAIDAS/EVOL_TEMPORAL_13.dat" using ($1 + 156):($3) every ::0::13 with lines lt rgb "brown" lw 5 notitle "S13",\
			"S14/SAIDAS/EVOL_TEMPORAL_14.dat" using ($1 + 169):($3) every ::0::13 with lines lt rgb "#018002" lw 5 notitle "S14",\
			"S15/SAIDAS/EVOL_TEMPORAL_15.dat" using ($1 + 182):($3) every ::0::13 with lines lt rgb "#8C0343" lw 5 notitle "S15",\
			"S16/SAIDAS/EVOL_TEMPORAL_16.dat" using ($1 + 195):($3) every ::0::13 with lines lt rgb "red" lw 5 notitle "S16",\
			"S17/SAIDAS/EVOL_TEMPORAL_17.dat" using ($1 + 208):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S17",\
			"S18/SAIDAS/EVOL_TEMPORAL_18.dat" using ($1 + 221):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S18",\
			"S19/SAIDAS/EVOL_TEMPORAL_19.dat" using ($1 + 234):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S19",\
			"S20/SAIDAS/EVOL_TEMPORAL_20.dat" using ($1 + 247):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S20",\
			"S21/SAIDAS/EVOL_TEMPORAL_21.dat" using ($1 + 260):($3) every ::0::t with lines lt rgb "yellow" lw 5 title "S21",\
		}
	}
	if(i==22){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S02",\
			"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S03",\
			"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S04",\
			"S05/SAIDAS/EVOL_TEMPORAL_5.dat" using ($1 + 52):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S05",\
			"S06/SAIDAS/EVOL_TEMPORAL_6.dat" using ($1 + 65):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S06",\
			"S07/SAIDAS/EVOL_TEMPORAL_7.dat" using ($1 + 78):($3) every ::0::13 with lines lt rgb "dark-salmon" lw 5 notitle "S07",\
			"S08/SAIDAS/EVOL_TEMPORAL_8.dat" using ($1 + 91):($3) every ::0::13 with lines lt rgb "cyan" lw 5 notitle "S08",\
			"S09/SAIDAS/EVOL_TEMPORAL_9.dat" using ($1 + 104):($3) every ::0::13 with lines lt rgb "orange" lw 5 notitle "S09",\
			"S10/SAIDAS/EVOL_TEMPORAL_10.dat" using ($1 + 117):($3) every ::0::13 with lines lt rgb "salmon" lw 5 notitle "S10",\
			"S11/SAIDAS/EVOL_TEMPORAL_11.dat" using ($1 + 130):($3) every ::0::13 with lines lt rgb "white" lw 5 notitle "S11",\
			"S12/SAIDAS/EVOL_TEMPORAL_12.dat" using ($1 + 143):($3) every ::0::13 with lines lt rgb "olive" lw 5 notitle "S12",\
			"S13/SAIDAS/EVOL_TEMPORAL_13.dat" using ($1 + 156):($3) every ::0::13 with lines lt rgb "brown" lw 5 notitle "S13",\
			"S14/SAIDAS/EVOL_TEMPORAL_14.dat" using ($1 + 169):($3) every ::0::13 with lines lt rgb "#018002" lw 5 notitle "S14",\
			"S15/SAIDAS/EVOL_TEMPORAL_15.dat" using ($1 + 182):($3) every ::0::13 with lines lt rgb "#8C0343" lw 5 notitle "S15",\
			"S16/SAIDAS/EVOL_TEMPORAL_16.dat" using ($1 + 195):($3) every ::0::13 with lines lt rgb "red" lw 5 notitle "S16",\
			"S17/SAIDAS/EVOL_TEMPORAL_17.dat" using ($1 + 208):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S17",\
			"S18/SAIDAS/EVOL_TEMPORAL_18.dat" using ($1 + 221):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S18",\
			"S19/SAIDAS/EVOL_TEMPORAL_19.dat" using ($1 + 234):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S19",\
			"S20/SAIDAS/EVOL_TEMPORAL_20.dat" using ($1 + 247):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S20",\
			"S21/SAIDAS/EVOL_TEMPORAL_21.dat" using ($1 + 260):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S21",\
			"S22/SAIDAS/EVOL_TEMPORAL_22.dat" using ($1 + 273):($3) every ::0::t with lines lt rgb "dark-salmon" lw 5 title "S22",\

		}
	}
	if(i==23){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S02",\
			"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S03",\
			"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S04",\
			"S05/SAIDAS/EVOL_TEMPORAL_5.dat" using ($1 + 52):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S05",\
			"S06/SAIDAS/EVOL_TEMPORAL_6.dat" using ($1 + 65):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S06",\
			"S07/SAIDAS/EVOL_TEMPORAL_7.dat" using ($1 + 78):($3) every ::0::13 with lines lt rgb "dark-salmon" lw 5 notitle "S07",\
			"S08/SAIDAS/EVOL_TEMPORAL_8.dat" using ($1 + 91):($3) every ::0::13 with lines lt rgb "cyan" lw 5 notitle "S08",\
			"S09/SAIDAS/EVOL_TEMPORAL_9.dat" using ($1 + 104):($3) every ::0::13 with lines lt rgb "orange" lw 5 notitle "S09",\
			"S10/SAIDAS/EVOL_TEMPORAL_10.dat" using ($1 + 117):($3) every ::0::13 with lines lt rgb "salmon" lw 5 notitle "S10",\
			"S11/SAIDAS/EVOL_TEMPORAL_11.dat" using ($1 + 130):($3) every ::0::13 with lines lt rgb "white" lw 5 notitle "S11",\
			"S12/SAIDAS/EVOL_TEMPORAL_12.dat" using ($1 + 143):($3) every ::0::13 with lines lt rgb "olive" lw 5 notitle "S12",\
			"S13/SAIDAS/EVOL_TEMPORAL_13.dat" using ($1 + 156):($3) every ::0::13 with lines lt rgb "brown" lw 5 notitle "S13",\
			"S14/SAIDAS/EVOL_TEMPORAL_14.dat" using ($1 + 169):($3) every ::0::13 with lines lt rgb "#018002" lw 5 notitle "S14",\
			"S15/SAIDAS/EVOL_TEMPORAL_15.dat" using ($1 + 182):($3) every ::0::13 with lines lt rgb "#8C0343" lw 5 notitle "S15",\
			"S16/SAIDAS/EVOL_TEMPORAL_16.dat" using ($1 + 195):($3) every ::0::13 with lines lt rgb "red" lw 5 notitle "S16",\
			"S17/SAIDAS/EVOL_TEMPORAL_17.dat" using ($1 + 208):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S17",\
			"S18/SAIDAS/EVOL_TEMPORAL_18.dat" using ($1 + 221):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S18",\
			"S19/SAIDAS/EVOL_TEMPORAL_19.dat" using ($1 + 234):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S19",\
			"S20/SAIDAS/EVOL_TEMPORAL_20.dat" using ($1 + 247):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S20",\
			"S21/SAIDAS/EVOL_TEMPORAL_21.dat" using ($1 + 260):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S21",\
			"S22/SAIDAS/EVOL_TEMPORAL_22.dat" using ($1 + 273):($3) every ::0::13 with lines lt rgb "dark-salmon" lw 5 notitle "S22",\
			"S23/SAIDAS/EVOL_TEMPORAL_23.dat" using ($1 + 286):($3) every ::0::t with lines lt rgb "cyan" lw 5 title "S23"
		}
	}
	if(i==24){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S02",\
			"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S03",\
			"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S04",\
			"S05/SAIDAS/EVOL_TEMPORAL_5.dat" using ($1 + 52):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S05",\
			"S06/SAIDAS/EVOL_TEMPORAL_6.dat" using ($1 + 65):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S06",\
			"S07/SAIDAS/EVOL_TEMPORAL_7.dat" using ($1 + 78):($3) every ::0::13 with lines lt rgb "dark-salmon" lw 5 notitle "S07",\
			"S08/SAIDAS/EVOL_TEMPORAL_8.dat" using ($1 + 91):($3) every ::0::13 with lines lt rgb "cyan" lw 5 notitle "S08",\
			"S09/SAIDAS/EVOL_TEMPORAL_9.dat" using ($1 + 104):($3) every ::0::13 with lines lt rgb "orange" lw 5 notitle "S09",\
			"S10/SAIDAS/EVOL_TEMPORAL_10.dat" using ($1 + 117):($3) every ::0::13 with lines lt rgb "salmon" lw 5 notitle "S10",\
			"S11/SAIDAS/EVOL_TEMPORAL_11.dat" using ($1 + 130):($3) every ::0::13 with lines lt rgb "white" lw 5 notitle "S11",\
			"S12/SAIDAS/EVOL_TEMPORAL_12.dat" using ($1 + 143):($3) every ::0::13 with lines lt rgb "olive" lw 5 notitle "S12",\
			"S13/SAIDAS/EVOL_TEMPORAL_13.dat" using ($1 + 156):($3) every ::0::13 with lines lt rgb "brown" lw 5 notitle "S13",\
			"S14/SAIDAS/EVOL_TEMPORAL_14.dat" using ($1 + 169):($3) every ::0::13 with lines lt rgb "#018002" lw 5 notitle "S14",\
			"S15/SAIDAS/EVOL_TEMPORAL_15.dat" using ($1 + 182):($3) every ::0::13 with lines lt rgb "#8C0343" lw 5 notitle "S15",\
			"S16/SAIDAS/EVOL_TEMPORAL_16.dat" using ($1 + 195):($3) every ::0::13 with lines lt rgb "red" lw 5 notitle "S16",\
			"S17/SAIDAS/EVOL_TEMPORAL_17.dat" using ($1 + 208):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S17",\
			"S18/SAIDAS/EVOL_TEMPORAL_18.dat" using ($1 + 221):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S18",\
			"S19/SAIDAS/EVOL_TEMPORAL_19.dat" using ($1 + 234):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S19",\
			"S20/SAIDAS/EVOL_TEMPORAL_20.dat" using ($1 + 247):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S20",\
			"S21/SAIDAS/EVOL_TEMPORAL_21.dat" using ($1 + 260):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S21",\
			"S22/SAIDAS/EVOL_TEMPORAL_22.dat" using ($1 + 273):($3) every ::0::13 with lines lt rgb "dark-salmon" lw 5 notitle "S22",\
			"S23/SAIDAS/EVOL_TEMPORAL_23.dat" using ($1 + 286):($3) every ::0::13 with lines lt rgb "cyan" lw 5 notitle "S23",\
			"S24/SAIDAS/EVOL_TEMPORAL_24.dat" using ($1 + 299):($3) every ::0::t with lines lt rgb "orange" lw 5 title "S24"
		}
	}
	if(i==25){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S02",\
			"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S03",\
			"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S04",\
			"S05/SAIDAS/EVOL_TEMPORAL_5.dat" using ($1 + 52):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S05",\
			"S06/SAIDAS/EVOL_TEMPORAL_6.dat" using ($1 + 65):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S06",\
			"S07/SAIDAS/EVOL_TEMPORAL_7.dat" using ($1 + 78):($3) every ::0::13 with lines lt rgb "dark-salmon" lw 5 notitle "S07",\
			"S08/SAIDAS/EVOL_TEMPORAL_8.dat" using ($1 + 91):($3) every ::0::13 with lines lt rgb "cyan" lw 5 notitle "S08",\
			"S09/SAIDAS/EVOL_TEMPORAL_9.dat" using ($1 + 104):($3) every ::0::13 with lines lt rgb "orange" lw 5 notitle "S09",\
			"S10/SAIDAS/EVOL_TEMPORAL_10.dat" using ($1 + 117):($3) every ::0::13 with lines lt rgb "salmon" lw 5 notitle "S10",\
			"S11/SAIDAS/EVOL_TEMPORAL_11.dat" using ($1 + 130):($3) every ::0::13 with lines lt rgb "white" lw 5 notitle "S11",\
			"S12/SAIDAS/EVOL_TEMPORAL_12.dat" using ($1 + 143):($3) every ::0::13 with lines lt rgb "olive" lw 5 notitle "S12",\
			"S13/SAIDAS/EVOL_TEMPORAL_13.dat" using ($1 + 156):($3) every ::0::13 with lines lt rgb "brown" lw 5 notitle "S13",\
			"S14/SAIDAS/EVOL_TEMPORAL_14.dat" using ($1 + 169):($3) every ::0::13 with lines lt rgb "#018002" lw 5 notitle "S14",\
			"S15/SAIDAS/EVOL_TEMPORAL_15.dat" using ($1 + 182):($3) every ::0::13 with lines lt rgb "#8C0343" lw 5 notitle "S15",\
			"S16/SAIDAS/EVOL_TEMPORAL_16.dat" using ($1 + 195):($3) every ::0::13 with lines lt rgb "red" lw 5 notitle "S16",\
			"S17/SAIDAS/EVOL_TEMPORAL_17.dat" using ($1 + 208):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S17",\
			"S18/SAIDAS/EVOL_TEMPORAL_18.dat" using ($1 + 221):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S18",\
			"S19/SAIDAS/EVOL_TEMPORAL_19.dat" using ($1 + 234):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S19",\
			"S20/SAIDAS/EVOL_TEMPORAL_20.dat" using ($1 + 247):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S20",\
			"S21/SAIDAS/EVOL_TEMPORAL_21.dat" using ($1 + 260):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S21",\
			"S22/SAIDAS/EVOL_TEMPORAL_22.dat" using ($1 + 273):($3) every ::0::13 with lines lt rgb "dark-salmon" lw 5 notitle "S22",\
			"S23/SAIDAS/EVOL_TEMPORAL_23.dat" using ($1 + 286):($3) every ::0::13 with lines lt rgb "cyan" lw 5 notitle "S23",\
			"S24/SAIDAS/EVOL_TEMPORAL_24.dat" using ($1 + 299):($3) every ::0::13 with lines lt rgb "orange" lw 5 notitle "S24",\
			"S25/SAIDAS/EVOL_TEMPORAL_25.dat" using ($1 + 312):($3) every ::0::t with lines lt rgb "salmon" lw 5 title "S25"
		}
	}
	if(i==26){do for[t=a:b]{
		outfile = sprintf('ANIME/anime-inf-cort/%03.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(t+13*(i-1)) with linespoints linestyle 1 title "DADOS: Londrina",\
			"S01/SAIDAS/EVOL_TEMPORAL_1.dat" using 1:3 every ::0::13 with lines lt rgb "red" lw 5 notitle "S01",\
			"S02/SAIDAS/EVOL_TEMPORAL_2.dat" using ($1 + 13):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S02",\
			"S03/SAIDAS/EVOL_TEMPORAL_3.dat" using ($1 + 26):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S03",\
			"S04/SAIDAS/EVOL_TEMPORAL_4.dat" using ($1 + 39):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S04",\
			"S05/SAIDAS/EVOL_TEMPORAL_5.dat" using ($1 + 52):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S05",\
			"S06/SAIDAS/EVOL_TEMPORAL_6.dat" using ($1 + 65):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S06",\
			"S07/SAIDAS/EVOL_TEMPORAL_7.dat" using ($1 + 78):($3) every ::0::13 with lines lt rgb "dark-salmon" lw 5 notitle "S07",\
			"S08/SAIDAS/EVOL_TEMPORAL_8.dat" using ($1 + 91):($3) every ::0::13 with lines lt rgb "cyan" lw 5 notitle "S08",\
			"S09/SAIDAS/EVOL_TEMPORAL_9.dat" using ($1 + 104):($3) every ::0::13 with lines lt rgb "orange" lw 5 notitle "S09",\
			"S10/SAIDAS/EVOL_TEMPORAL_10.dat" using ($1 + 117):($3) every ::0::13 with lines lt rgb "salmon" lw 5 notitle "S10",\
			"S11/SAIDAS/EVOL_TEMPORAL_11.dat" using ($1 + 130):($3) every ::0::13 with lines lt rgb "white" lw 5 notitle "S11",\
			"S12/SAIDAS/EVOL_TEMPORAL_12.dat" using ($1 + 143):($3) every ::0::13 with lines lt rgb "olive" lw 5 notitle "S12",\
			"S13/SAIDAS/EVOL_TEMPORAL_13.dat" using ($1 + 156):($3) every ::0::13 with lines lt rgb "brown" lw 5 notitle "S13",\
			"S14/SAIDAS/EVOL_TEMPORAL_14.dat" using ($1 + 169):($3) every ::0::13 with lines lt rgb "#018002" lw 5 notitle "S14",\
			"S15/SAIDAS/EVOL_TEMPORAL_15.dat" using ($1 + 182):($3) every ::0::13 with lines lt rgb "#8C0343" lw 5 notitle "S15",\
			"S16/SAIDAS/EVOL_TEMPORAL_16.dat" using ($1 + 195):($3) every ::0::13 with lines lt rgb "red" lw 5 notitle "S16",\
			"S17/SAIDAS/EVOL_TEMPORAL_17.dat" using ($1 + 208):($3) every ::0::13 with lines lt rgb "blue" lw 5 notitle "S17",\
			"S18/SAIDAS/EVOL_TEMPORAL_18.dat" using ($1 + 221):($3) every ::0::13 with lines lt rgb "green" lw 5 notitle "S18",\
			"S19/SAIDAS/EVOL_TEMPORAL_19.dat" using ($1 + 234):($3) every ::0::13 with lines lt rgb "0xFF1493" lw 5 notitle "S19",\
			"S20/SAIDAS/EVOL_TEMPORAL_20.dat" using ($1 + 247):($3) every ::0::13 with lines lt rgb "purple" lw 5 notitle "S20",\
			"S21/SAIDAS/EVOL_TEMPORAL_21.dat" using ($1 + 260):($3) every ::0::13 with lines lt rgb "yellow" lw 5 notitle "S21",\
			"S22/SAIDAS/EVOL_TEMPORAL_22.dat" using ($1 + 273):($3) every ::0::13 with lines lt rgb "dark-salmon" lw 5 notitle "S22",\
			"S23/SAIDAS/EVOL_TEMPORAL_23.dat" using ($1 + 286):($3) every ::0::13 with lines lt rgb "cyan" lw 5 notitle "S23",\
			"S24/SAIDAS/EVOL_TEMPORAL_24.dat" using ($1 + 299):($3) every ::0::13 with lines lt rgb "orange" lw 5 notitle "S24",\
			"S25/SAIDAS/EVOL_TEMPORAL_25.dat" using ($1 + 312):($3) every ::0::13 with lines lt rgb "salmon" lw 5 title "S25",\
			"S26/SAIDAS/EVOL_TEMPORAL_26.dat" using ($1 + 325):($3) every ::0::t with lines lt rgb "white" lw 5 title "S25"
		}
	}
}
