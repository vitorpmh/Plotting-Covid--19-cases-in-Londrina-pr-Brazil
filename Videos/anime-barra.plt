reset session

set isosamples 200
set samples 200

set ytics scale 0 font ',16'
unset xtics

set terminal pngcairo size 1920,1080 enhanced background rgb "gray80"

set style fill solid 1.0

system('mkdir -p ANIME/anime-barra')

a=4
b=13*26+a

BoxWidht=0.3

vacinados = 13012
VacinadosSucetiveis = vacinados/2
VacinadosRemovidos = vacinados/2

do for[t=317:b]{	
	if(t<=316){
		unset multiplot
		outfile = sprintf('ANIME/anime-barra/%04.0f.png',t-a+1)
		set output outfile
		set multiplot layout 2, 1
		set lmargin at screen 0.1
		set rmargin at screen 0.9
		set key outside bottom center title strftime("Dia %d/%m/%Y",1588000000.0+(t-a)*24*3600) font ',24' offset 0,8.5
		
		set tmargin at screen 0.9
		set bmargin at screen 0.7
		unset xlabel
		unset xrange
		unset yrange
		set xrange [0:620000]
		set yrange [3.5:4.5]
		plot	"ANIME/ANIME-BARRA/data.dat" using 4:1:0:t:($1-BoxWidht):($1+BoxWidht):2:ytic(3) every ::3::3 with boxxyerrorbar lc rgb variable notitle,\
			"ANIME/ANIME-BARRA/data.dat" using t:1:t every ::3::3 with labels font ',16' offset 6,0 notitle
		
		set key title "" font ',0' offset 0,0
		unset tmargin
		unset bmargin
		set tmargin at screen 0.6
		set bmargin at screen 0.1
		unset xrange
		unset yrange		
		set xrange [0:55000]
		set yrange [0.5:3.5]
		plot	"ANIME/ANIME-BARRA/data.dat" using 4:1:0:t:($1-BoxWidht):($1+BoxWidht):2:ytic(3) every ::0::2 with boxxyerrorbar lc rgb variable notitle,\
			"ANIME/ANIME-BARRA/data.dat" using t:1:t every ::0::0 with labels font ',16' offset 5,0 notitle,\
			"ANIME/ANIME-BARRA/data.dat" using t:1:t every ::1::1 with labels font ',16' offset 5,0 notitle,\
			"ANIME/ANIME-BARRA/data.dat" using t:1:t every ::2::2 with labels font ',16' offset 5,0 notitle,\
			"ANIME/ANIME-BARRA/data.dat" using t:1:t every ::4::4 with labels font ',16' offset 5,0 notitle
	}else {
		unset multiplot
		outfile = sprintf('ANIME/anime-barra/%04.0f.png',t-a+1)
		set output outfile
		set multiplot layout 2, 1
		set lmargin at screen 0.1
		set rmargin at screen 0.9
		set key outside bottom center title strftime("Dia %d/%m/%Y",1588000000.0+(t-a)*24*3600) font ',24' offset 0,8.5
		
		set tmargin at screen 0.9
		set bmargin at screen 0.7
		unset xlabel
		unset xrange
		unset yrange
		set xrange [0:620000]
		set yrange [3.5:4.5]
		set label  sprintf("Suscetíveis Vacinados\n               %d",VacinadosSucetiveis) at screen 0.09,0.88 offset 4,0 rotate by 15 font "arial,16";
		plot	"ANIME/ANIME-BARRA/data.dat" using 4:1:0:t:($1-BoxWidht):($1+BoxWidht):2:ytic(3) every ::3::3 with boxxyerrorbar lc rgb variable notitle,\
			"ANIME/ANIME-BARRA/data.dat" using 4:1:0:(VacinadosSucetiveis):($1-BoxWidht):($1+BoxWidht):2:ytic(3) every ::3::3 with boxxyerrorbar lc rgb "0x0000A1" notitle,\
			"ANIME/ANIME-BARRA/data.dat" using t:1:t every ::3::3 with labels font ',16' offset 6,0 notitle
		
		set key title "" font ',0' offset 0,0
		unset tmargin
		unset bmargin
		set tmargin at screen 0.6
		set bmargin at screen 0.1
		unset xrange
		unset yrange		
		set xrange [0:55000]
		set yrange [0.5:3.5]
		set label  sprintf("Removidos Vacinados\n               %d",VacinadosRemovidos) at screen 0.1,0.21 offset 4,2 rotate by 15 font "arial,16";
		plot	"ANIME/ANIME-BARRA/data.dat" using 4:1:0:t:($1-BoxWidht):($1+BoxWidht):2:ytic(3) every ::0::2 with boxxyerrorbar lc rgb variable notitle,\
			"ANIME/ANIME-BARRA/data.dat" using 4:1:0:(VacinadosRemovidos):($1-BoxWidht):($1+BoxWidht):2:ytic(3) every ::0::0 with boxxyerrorbar lc rgb "0x005454" notitle,\
			"ANIME/ANIME-BARRA/data.dat" using t:1:t every ::0::0 with labels font ',16' offset 5,0 notitle,\
			"ANIME/ANIME-BARRA/data.dat" using t:1:t every ::1::1 with labels font ',16' offset 5,0 notitle,\
			"ANIME/ANIME-BARRA/data.dat" using t:1:t every ::2::2 with labels font ',16' offset 5,0 notitle,\
			"ANIME/ANIME-BARRA/data.dat" using t:1:t every ::4::4 with labels font ',16' offset 5,0 notitle
	}
}
unset multiplot
