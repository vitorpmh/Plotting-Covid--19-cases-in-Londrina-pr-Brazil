reset

set isosamples 200

set tics font ", 20"
set xlabel "t (dias)" font ", 20" offset 60,0
set ylabel " " font ""
set key outside bottom center maxrows 1 font ", 20"

set logscale y

set xrange [-10:365]
set yrange [1:170000]

set terminal pngcairo size 1920,1080 enhanced font 'Verdana,20' background rgb "gray80"

set encoding utf8

system('mkdir -p ANIME/animation')

a=0
b=335

round(x) = floor(x/23)


#set label "   Pico\n05/03/21" at 312,801 offset -10,-4 font ",14";		
#"ANIME/DATA/data.dat" using 1:27 every ::312::312 with points pt 7 ps 2 lc rgb "red" lw 2 notitle,\
#"ANIME/DATA/data.dat" using 1:27 every ::312::312 with impulses dashtype "." lc rgb "gray10" lw 1.5 notitle
		


do for[i=25:26]{
	if(i==1){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($2+(($3-$2)/(b-a))*(t-a)) with lines lt rgb "red" lw 5 title "Simulação 01 Dia " .(round(t-23)+13*i),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:2 every ::0::13 with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle;
		}
	}
	if(i==2){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($3+(($4-$3)/(b-a))*(t-a)) with lines lt rgb "blue" lw 5 title "Simulação 02 Dia " .(round(t-23)+13*i),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:3 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle;
		}
	}
	if(i==3){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($4+(($5-$4)/(b-a))*(t-a)) with lines lt rgb "green" lw 5 title "Simulação 03 Dia " .(round(t-23)+13*(i)),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:4 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle;
		}
	}
	if(i==4){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($5+(($6-$5)/(b-a))*(t-a)) with lines lt rgb "0xFF1493" lw 5 title "Simulação 04 Dia " .(round(t-23)+13*(i)),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:5 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle;
		}
	}
	if(i==5){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($6+(($7-$6)/(b-a))*(t-a)) with lines lt rgb "purple" lw 5 title "Simulação 05 Dia " .(round(t-23)+13*(i)),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:6 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle;
		}
	}
	if(i==6){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($7+(($8-$7)/(b-a))*(t-a)) with lines lt rgb "yellow" lw 5 title "Simulação 06 Dia " .(round(t-23)+13*(i)),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:7 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle;
		}
	}
	if(i==7){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($8+(($9-$8)/(b-a))*(t-a)) with lines lt rgb "dark-salmon" lw 5 title "Simulação 07 Dia " .(round(t-23)+13*(i)),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:8 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle;
		}
	}
	if(i==8){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($9+(($10-$9)/(b-a))*(t-a)) with lines lt rgb "cyan" lw 5 title "Simulação 08 Dia " .(round(t-23)+13*(i)),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:9 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle;
		}
	}
	if(i==9){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($10+(($11-$10)/(b-a))*(t-a)) with lines lt rgb "orange" lw 5 title "Simulação 09 Dia " .(round(t-23)+13*(i)),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:10 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle;
		}
	}
	if(i==10){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($11+(($12-$11)/(b-a))*(t-a)) with lines lt rgb "salmon" lw 5 title "Simulação 10 Dia " .(round(t-23)+13*(i)),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:11 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle;
		}
	}
	if(i==11){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($12+(($13-$12)/(b-a))*(t-a)) with lines lt rgb "white" lw 5 title "Simulação 11 Dia " .(round(t-23)+13*(i)),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:12 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle;
		}
	}
	if(i==12){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($13+(($14-$13)/(b-a))*(t-a)) with lines lt rgb "olive" lw 5 title "Simulação 12 Dia " .(round(t-23)+13*(i)),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:13 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
		}
	}
	if(i==13){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($14+(($15-$14)/(b-a))*(t-a)) with lines lt rgb "brown" lw 5 title "Simulação 13 Dia " .(round(t-23)+13*(i)),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:14 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
		}		
	}
	if(i==14){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($15+(($16-$15)/(b-a))*(t-a)) with lines lt rgb "#018002" lw 5 title "Simulação 14 Dia " .(round(t-23)+13*(i)),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:15 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
		}		
	}
	if(i==15){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($16+(($17-$16)/(b-a))*(t-a)) with lines lt rgb "#8C0343" lw 5 title "Simulação 15 Dia " .(round(t-23)+13*(i)),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:16 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
		}		
	}
	if(i==16){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($17+(($18-$17)/(b-a))*(t-a)) with lines lt rgb "red" lw 5 title "Simulação 16 Dia " .(round(t-23)+13*(i)),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:17 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
		}		
	}
	if(i==17){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($18+(($19-$18)/(b-a))*(t-a)) with lines lt rgb "blue" lw 5 title "Simulação 17 Dia " .(round(t-23)+13*(i)),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:18 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
		}		
	}
	if(i==18){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($19+(($20-$19)/(b-a))*(t-a)) with lines lt rgb "green" lw 5 title "Simulação 18 Dia " .(round(t-23)+13*(i)),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:19 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
		}		
	}
	if(i==19){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($20+(($21-$20)/(b-a))*(t-a)) with lines lt rgb "0xFF1493" lw 5 title "Simulação 19 Dia " .(round(t-23)+13*(i)),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:20 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
		}		
	}
	if(i==20){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($21+(($22-$21)/(b-a))*(t-a)) with lines lt rgb "purple" lw 5 title "Simulação 20 Dia " .(round(t-23)+13*(i)),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:21 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
		}		
	}
	if(i==21){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($22+(($23-$22)/(b-a))*(t-a)) with lines lt rgb "yellow" lw 5 title "Simulação 21 Dia " .(round(t-23)+13*(i)),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:22 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
		}		
	}
	if(i==22){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($23+(($24-$23)/(b-a))*(t-a)) with lines lt rgb "dark-salmon" lw 5 title "Simulação 22 Dia " .(round(t-23)+13*(i)),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:23 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
		}		
	}
	if(i==23){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($24+(($25-$24)/(b-a))*(t-a)) with lines lt rgb "cyan" lw 5 title "Simulação 23 Dia " .(round(t-23)+13*(i)),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i)with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:24 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
		}		
	}
	if(i==24){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($25+(($26-$25)/(b-a))*(t-a)) with lines lt rgb "orange" lw 5 title "Simulação 24 Dia " .(round(t-23)+13*(i)),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:25 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
		}		
	}
	if(i==25){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:($26+(($27-$26)/(b-a))*(t-a)) with lines lt rgb "salmon" lw 5 title "Simulação 25 Dia " .(round(t-23)+13*(i)),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::(round(t-23)+13*i) with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:26 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::(round(t-23)+13*i)::(round(t-23)+13*i) with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
		}		
	}
	if(i==26){do for[t=a:b]{
		outfile = sprintf('ANIME/animation/%04.0f.png',t+1+(b+1)*(i-1));
		set output outfile;
		plot 	"ANIME/DATA/data.dat" using 1:27 with lines lt rgb "white" lw 5 title "Simulação 26 Dia " .(round(t-23)+13*(i)),\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::i*13 with points pt 6 ps 2 lc rgb "gray30" lw 2 title "Dados: Londrina",\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::i*13::i*13 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"ANIME/DATA/data.dat" using 1:27 every ::0::(13*i) with lines lt rgb "black" lw 5.5 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7) every ::0::0 with impulses dashtype "-" lc rgb "gray10" lw 2 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::0::0 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
			"arquivo_geral_Londrina.dat.dat" using ($1):($4 - $7):($2) every ::i*13::i*13 with labels font ",18" textcolor lt -1 rotate by 0 offset 4,-4 notitle,\
		}		
	}
}
