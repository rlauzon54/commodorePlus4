    1 rem bob carr
    2 rem 3902 w. rovey
    3 rem phoenix, ariz. 85019
    4 rem
    5 rem cursor #26, june, 1981
    6 rem copyright(c)1981 the code works
    7 rem box 550, goleta, ca. 93116
    8 rem
   10 rem as of 18 june 81
   20 color 0,1: color 4,1: color 1,6,7: scnclr:x=rnd(-ti)
   30 clr:pg$="lawn!":nm$="26":gosub 60400:goto 62000
  100 print"{down}{down}enter your skill level (1-10) ? ";
  101 gosub 60000:if in$="" then in$="5":print"i'll assume "in$".":for g=1 to 1e3:next
  102 g=val(in$):if g<1 or g>10 then 100
  103 m(1)=wd-1:m(2)=wd:m(3)=wd+1:m(4)=-1:m(5)=0:m(6)=1:m(7)=-wd-1:m(8)=-wd
  104 m(9)=-wd+1
  105 if g=0 then g=5:print"{down}{down}{down}{down}i'll assume 5":for j=1 to 600:next
  110 d=0:p=0:f=37.4:d=g/640:lf=50
  120 aa$="{home}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}{rght}"
  130 x=crt+wd*23+38:a=5
  140 scnclr: print"percent:           fuel: e {rvon}          {rvof} f"
  150 print"{CBM-A}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-F}    {CBM-D}{CBM-F}{CBM-D}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-S}"
  160 print"{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}G    HG{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{SHIFT--}"
  170 print"{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}G    HG{SHIFT--}{CBM-+}{CBM-+}UI{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{SHIFT--}"
  180 print"{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}G    HG{SHIFT--}{CBM-+}{CBM-+}JVI{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{SHIFT--}"
  190 print"{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}G    HG{SHIFT--}{CBM-+}{CBM-+}{CBM-+}JK{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{SHIFT--}"
  200 print"{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}UG    HG{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{SHIFT--}"
  210 print"{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}U{SHIFT-+}{CBM-K}    {rvon}{CBM-K}{rvof}GJ{SHIFT-*}{SHIFT-*}I{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{SHIFT--}"
  220 print"{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}JV{rvon}{CBM-G} {CBM-M}   {rvof}I   {SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}U{SHIFT-*}I{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{SHIFT--}"
  230 print"{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}B{rvon}{CBM-G} {CBM-M}   {rvof}UI  JI{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}JV{SHIFT-+}I{CBM-+}{CBM-+}{CBM-+}{CBM-+}{SHIFT--}"
  240 print"{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}J{rvon}{CBM-G} {CBM-M}   {rvof}JKI{rvon}  {rvof}{CBM-K}*{CBM-+}*{CBM-+}{CBM-+}*{CBM-+}*UI{CBM-+}{CBM-+}{CBM-+}JV{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{SHIFT--}"
  250 print"{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{rvon}{CBM-G} {CBM-M}  N               {rvof}K{CBM-+}{CBM-+}{CBM-+}{CBM-+}JK{CBM-+}{CBM-+}{CBM-+}{CBM-+}{SHIFT--}"
  260 print"{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{rvon}{CBM-G} {CBM-M} N                {rvof}*{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{SHIFT--}"
  270 print"{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{rvon}{CBM-G} {CBM-M}N{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{rvof}{CBM-K}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{SHIFT--}"
  280 print"{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{rvon}{CBM-G} {CBM-M}M                 {rvof}{CBM-K}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{SHIFT--}"
  290 print"{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{rvon}{CBM-G} {CBM-M} M                {rvof}*{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{SHIFT--}"
  300 print"{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}U{rvon}{CBM-G} {CBM-M}  M   {CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{rvof}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{SHIFT--}"
  310 print"{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}JK{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-B}{CBM-B}{CBM-B}{CBM-B}{rvon} {CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-F}{rvof}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{SHIFT--}"
  320 print"{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-B}{CBM-B}{CBM-K}           {rvon}{CBM-K}{rvof}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{SHIFT--}"
  330 print"{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-B}{CBM-B}{rvon}{CBM-C}{rvof}{CBM-I}{CBM-I}         {rvon}{CBM-K}{rvof}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{SHIFT--}"
  340 print"{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-B}{CBM-B}{CBM-K}           {rvon}{CBM-K}{rvof}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{SHIFT--}"
  350 print"{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-B}{CBM-B}{rvon} {rvof}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{rvon}{CBM-V}{rvof}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{SHIFT--}"
  360 print"{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-W}"
  370 print"{SHIFT--}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{CBM-+}{rvon}W{rvof}"
  380 print"{CBM-Z}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-E}{SHIFT-*}{home}"
  390 poke crt+23*wd+39,93:poke crt+24*wd+39,125:y=86
  400 z=peek(x+w):if z=32 goto 430
  410 if z<>102 then a=5:goto 440
  420 p=p+1:if rnd(1)<.007 then 770
  430 poke x,32:x=x+w
  440 poke x,y:b=a:w=0:gosub 2000:a=val(a$):if a=0 then a=b
  445 y=86:if f<lf-d then y=91:lf=f
  450 f=f-d:print"{home}"tab(8)int(p/506*100):if f<37 then print"{home}"tab(f)":"
  460 if f<28 or p=506 then 570
  470 w=m(a):goto 400
  570 gosub 1000:ms$="{rvon}out of fuel!":if p=506 then ms$="{rvon}you won!{rvof}       "
  575 print"{home}"ms$:if p=506 thenfor j=1 to 1200:next:goto 600
  580 poke x,215
  600 scnclr: print"{down}{down}{down}"ms$
  605 gosub 1000
  630 tp=int(p/506*100):if tp>bp then bp=tp
  635 gm=gm+1:tt=tt+tp:av=int(tt/gm)
  640 print"{down}{down}game"gm"playing at level"g
  645 print"{down}{down}           percent of lawn mowed"
  650 print"           {CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}"
  653 print"{down}this game:"tab(18)tp
  655 if gm=1 then 670
  660 print"{down}average:"tab(18)av
  665 print"{down}best so far:"tab(18)bp
  670 print"{down}{down}play again ? ";
  675 gosub 60000:if left$(in$,1)<>"n" then 110
  680 scnclr: print:end
  770 poke x,32:x=x+w:bb$="{rvon}rocks{rvof}":if rnd(1)<.5 then bb$="{rvon}weeds{rvof}"
  780 for c=1 to 15:print aa$bb$:poke x,214:print aa$"     "
  790 poke x,32:next:a=5:goto 440
  800 rem
  810 print aa$"       "
  820 for x=1 to 100:next:return
  830 scnclr: print"{home}{home}":end
 1000 get l$:if l$<>"" then 1000
 1010 return
 2000 get a$: if a$="" then return
 2010 if a$=chr$(145) then a$="8"
 2020 if a$=chr$(17) then a$="2"
 2030 if a$=chr$(157) then a$="4"
 2040 if a$=chr$(29) then a$="6"
 2050 return
60000 in$=" ":zt=ti:zc=2:zd$=chr$(20)
60010 get z$:if z$<>"" then 60070
60020 if zt<=ti then print mid$(" {CBM-+}",zc,1);"{left}";:zc=3-zc:zt=ti+15
60030 goto 60010
60070 z=asc(z$):zl=len(in$):if(z and 127)<32 then print" {left}";:goto 60110
60080 if fl and(z and 127)>64 and (z and 127)<91 then z$=chr$((z+128) and 255)
60090 if zl>254 then 60010
60100 in$=in$+z$:print z$;zd$;z$;
60110 if z=13 then in$=mid$(in$,2):print cr$;:return
60120 if z=20 and zl>1 then in$=left$(in$,zl-1):print"{left}";:goto 60010
60130 if z=141 then z$=chr$(-20*(zl>1)):for z=2 to zl:print z$;:next z:goto 60000
60140 goto 60010
60300 scnclr:clr:gosub 60400:goto 100
60400 crt=3072:cr$=chr$(13)
60410 wd=40
60420 return
62000 print chr$(142):scnclr
62005 print"{down}{down}";tab(15-len(pg$));pg$;"  by bob carr"
62010 print"{down}     cursor #";nm$;"  copyright (c) 1981{down}"
62020 for i=1 to 13:print"{SHIFT-*}{SHIFT-*}{SHIFT-*}";:next i:print"{left}{inst}{SHIFT-*}"
62030 print"{down}practice for the summer months"
62080 print"{down}{down}{down}press {rvon}return{rvof} to continue"
62090 getkey in$
62100 goto 60300
