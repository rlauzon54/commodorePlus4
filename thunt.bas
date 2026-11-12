    1 rem c.torkildson
    2 rem 13791 heywood
    3 rem apple valley mn 55124
    4 rem 
    5 rem cursor #22 25nov80
    6 rem copyright(c)1980 the code works
    7 rem box 550 goleta ca 93017
   20 color 0,1: color 4,1: color 1,6,7: x=rnd(-ti)
   30 clr:pg$="thunt!":nm$="22":goto 62000
  100 gosub 190
  110 gosub 340:gosub 410:e=1:u=nr:gosub 660:gosub 700
  120 c$(1)="look for":c$(2)="treasure":c$(3)="around"
  130 gosub 1910:gosub 820
  150 for l=0 to s:gosub 870:next:if ca=1 then 1790
  160 gosub 1020:if t=1 then gosub 1290:if nt>3 then 1820
  170 gosub 970:goto 150  
  190 print"{down}difficulty level (1-5)? ";:tx=1e20:gosub 2090
  200 nr=val(in$)
  210 if nr<1 or nr>5 then print"{down}enter number from 1 to 5.":goto 190
  220 a=rnd(-ti):w=3072:y=w+51:n%=205:p%=81:b$="        ":h$="-"
  230 dim m%(4,4),n%(52),dq%(4),dm%(4)
  240 mc=19:dim h%(mc),v%(mc),gc%(3),p(nr+7),h(nr+7)
  250 for i=0 to 3:for j=0 to 3:read m%(i,j):next j,i
  260 data -1,32,-1,85,73,-1,64,114,93,-1,74,107,115,75,113,91
  270 for i=0 to 3:read gc%(i):next i:data 2,0,1,3
  280 for i=0 to 3:read dq%(i),dm%(i):next i
  290 data -1,2,-40,1,1,8,40,4
  300 read a,b:if a<>99 then n%(a)=b:goto 300
  310 data 0,10,9,6,10,9,11,3,21,12,27,15,29,5,43,13,49,11,50,14,51,7,99,99
  320 return
  340 scnclr:read a,b
  350 read c,d:if c<>0 then for i=1 to d:poke w+a,b:a=a+c:next i:goto 350
  360 data 10,102,1,20,40,24,-1,20,-40,24,0,0
  370 read a:if a<>0 then read b,c,d:for i=1 to c:poke w+a,d+(i-1):a=a+b:next:goto 370
  380 data 12,3,6,177,90,120,8,129,0
  390 return
  410 for c=0 to mc:h%(c)=0:v%(c)=0:next c
  420 for r=0 to 21:fs=0:h=0:nc=4:of=0
  430 for c=1 to mc-1:gosub 600
  440 if x=85 then h%(c-1)=h
  450 if v%(c) then h=1
  460 if x=73 then h%(c)=h
  470 next c:nc=2:c=mc:gosub 600:next r
  480 for c=mc to 1 step-1
  490 h%(c)=0:if v%(c) then h%(c-1)=1:mx=c:goto 510
  500 next c
  510 h=0:mn=0:for c=mc to 1 step-1
  520 if v%(c) then mn=c
  530 if h%(c) then h=1
  540 h%(c)=h
  550 if v%(c) then h=0
  560 next c
  570 nc=2:of=1:fs=0:r=22
  580 for c=mn to mx-1:gosub 600:next c
  590 c=mx:nc=1:gosub 600:return
  600 d=int(rnd(1)*nc)+of:x=m%(fs+v%(c),d):if x<0 then 600
  610 if h%(c) then if gc%(d)=0 then 600
  620 v=gc%(d) and 2:if h%(c-1) then if v=0 and x<>32 then 600
  630 v%(c)=v:fs=gc%(d) and 1:if fs then h%(c)=0
  640 poke y+40*r+c-1,x:return
  660 for i=e to u
  670 gosub 2260
  680 p(i)=r:h(i)=c:poke r+w,n%:next:return
  700 gosub 2260
  710 r$=chr$(int(a/3)+65):s$=chr$(int(b/3)+49):pt=r:return
  730 print"{home}  {CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}":print" {CBM-M}score{CBM-G}":print"  {CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}"
  740 print"  "s%
  750 print:print:print" "c$(1):print" "c$(2):print" "c$(3)
  760 print" "r$h$s$
  770 for i=1 to 6:print:next
  780 print" {CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}":print"{CBM-M}"m$(1)"{CBM-G}"
  790 print"{CBM-M}"m$(2)"{CBM-G}":print"{CBM-M}"m$(3)"{CBM-G}":print"{CBM-M}"m$(4)"{CBM-G}":print" {CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}"
  800 return
  820 gosub 2260
  830 a=r+w:if peek(a+1)=n% or peek(a-1)=n% or peek(a+40)=n% or peek(a-40)=n% then 820
  840 ph=c:pp=r:poke(r+w),p%
  850 for i=1 to 100:poke(r+w),pc+128:poke(r+w),p%:next:return
  870 ca=0:for i=1 to u:tx=ti
  880 r=int(rnd(1)*4):if tx+90<ti then 950
  890 b=p(i)+dq%(r):a=peek(b+w)
  900 if (n%(h(i)-64)and dm%(r))=0 then 880
  910 if a<64 or a>115 then 880
  920 if a=p% then a=ph
  930 poke(b+w),n%:poke p(i)+w,h(i):h(i)=a:p(i)=b
  940 if p(i)=pp then ca=1:i=u:l=s
  950 next:return
  970 for i=0 to 3:b=pp:a=ph:k=(i+2) and 3:j=dq%(k):k=dm%(k)
  980 if a<>n% then if(n%(a-64) and k) then b=b+j:a=peek(b+w):goto 980
  990 if a=n% then gosub 1890:i=3:if s<3 then s=s+1
 1000 next i:return
 1020 get a$:if a$<>"" then 1020
 1030 a=5:b=255:t=0
 1040 m$(1)="you have":m$(2)="  5     ":m$(3)="seconds ":m$(4)="to move "
 1050 gosub 730
 1060 tx=ti+60
 1070 get a$:if a$<>"" then 1130
 1080 if ti<tx then 1070
 1090 a=a-1
 1100 print"{home}":for m=1 to 17:print"{down}";:next:print"{rght}{rght}"a
 1110 if a=0 then 1270
 1120 goto 1060
 1130 if a$="q" then 1820
 1140 if a$=chr$(17) then b=3
 1150 if a$=chr$(157) then b=0
 1160 if a$=chr$(29) then b=2
 1170 if a$=chr$(145) then b=1
 1180 if a$=" " then 1270
 1190 if b=255 then 1070
 1200 if (dm%(b) and n%(ph-64))=0 then 1270
 1210 c=pp+dq%(b):a=peek(c+w)
 1220 if a=n% then poke pp+w,ph:goto 1790
 1230 if a<64 or a>115 then 1270
 1240 poke(c+w),p%:poke pp+w,ph:ph=a:pp=c
 1260 if pp=pt then t=1
 1270 gosub 1910:return
 1285 get a$:if a$<>"" then 1285
 1290 if nt=0 then s%=100
 1300 if nt=1 then s%=s%+200
 1310 if nt=2 then s%=s%+300
 1320 if nt=3 then s%=s%+400
 1330 nt=nt+1:if nt>3 then 1750
 1340 r$=" ":s$=" ":h$=" "
 1350 m$(1)="a       ":m$(2)="treasure":m$(3)="and a   ":m$(4)="puzzle  "
 1360 for i=1 to 3:c$(i)=b$:next
 1370 gosub 730:h$="-":gosub 1520
 1380 gosub 1650:gosub 2080:gosub 1770:print"{home}{down}":print tab(32);
 1390 if in$<>x$ then print"{rvon}wrong!":m$(1)="run for ":nt=3:goto 1420
 1400 print"{rvon}right!"
 1410 m$(1)="now find":m$(2)="the next":m$(3)="treasure"
 1420 if nt=3 then m$(2)="the exit":m$(3)=b$
 1430 m$(4)=b$
 1440 c$(1)="look for":c$(2)="treasure":c$(3)="around"
 1450 if nt=3 then c$(2)="the exit"
 1460 gosub 700:gosub 730:for n=1 to 1000:next
 1470 u=u+1:e=u:gosub 660
 1480 if nt=3 then u=u+1:gosub 660
 1490 print"{home}{down}":printtab(32);"      "
 1500 return
 1520 read x$:if x$<>"x" then 1520
 1530 y$=""
 1540 read x:for i=0 to int(rnd(1)*x):read x$:next
 1550 for i=1 to len(x$):x(i)=asc(mid$(x$,i,1)):next
 1560 for i=1 to len(x$):a=(int(rnd(1)*len(x$)+1)):b=x(i):x(i)=x(a):x(a)=b:next
 1570 for i=1 to len(x$):y$=y$+chr$(x(i)):next
 1580 return
 1590 data x,10,stump,truck,prize,smart,space,sound,paper
 1600 data snake,circle,treat,x,10,wander,price,circle
 1610 data reader,states,canyon,flight,yellow,tight,window,x,10,reverse
 1620 data candle,purple,parade,compute,sincere,tanker,clouds,sprint,chairs
 1650 print"{home}":print tab(31)" {CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}":print tab(31)"{CBM-M}decode{CBM-G}"
 1660 print tab(31)"{CBM-M}this  {CBM-G}":print tab(31)"{CBM-M}word  {CBM-G}"
 1670 print tab(31)"{CBM-M}      {CBM-G}":print tab(31)" {CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}"
 1680 for k=1 to 2:print:next:print tab(32)y$
 1690 print:print:print tab(32)" {CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-@}":print tab(32)"{CBM-M}you  {CBM-G}"
 1700 print tab(32)"{CBM-M}only {CBM-G}":printtab(32)"{CBM-M}have {CBM-G}"
 1710 print tab(32)" {CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}":print:printtab(33)"  ":printtab(33)"{up}25"
 1720 print:print tab(32)"seconds":print:print tab(31)
 1730 return
 1750 m$(1)="{rvon}  you   {rvof}":m$(2)="{rvon}  made  {rvof}":m$(3)="{rvon}   it   {rvof}":m$(4)="{rvon}"+b$+"{rvof}"
 1760 gosub 730:for i=1 to 3000:next:return
 1770 print"{home}":for m=1 to 22:print tab(31)"        ":next:return
 1790 m$(1)="you've  ":m$(2)="been    ":m$(3)="captured"
 1795 r$=" ":h$=" ":s$=" "
 1800 m$(4)=b$:for i=1 to 3:c$(i)=b$:next
 1810 gosub 730:for i=1 to 5000:next
 1820 scnclr:print"your score was: "s%
 1830 print"{down}{down}play again? ";:tx=1e20:gosub 2090
 1840 if left$(in$,1)="n" then scnclr:print"{down}{down}":end
 1850 restore
 1860 read a:if a<>99 then 1860
 1870 read a:s%=0:h$="-":nt=0:goto 110
 1890 m$(1)="you've  ":m$(2)="been    ":m$(3)="sighted!":m$(4)=b$
 1900 gosub 730:for i=1 to 1500:next
 1910 m$(1)=b$:m$(2)="treasure":m$(3)=" hunt!  ":m$(4)=b$
 1920 gosub 730:return
 2080 tx=ti+60
 2090 in$=" ":zt=ti:zc=2:zd$=chr$(20):a=25
 2100 get z$:if z$<>"" then 2140
 2110 if ti>=tx then 2220
 2120 if ti>=zt then print mid$(" {CBM-+}",zc,1);"{left}";:zc=3-zc:zt=ti+15
 2130 goto 2100
 2140 z=asc(z$):zl=len(in$):if(z and 127)<32 then print" {left}";:goto 2180
 2150 if fl and(z and 127)>64 and (z and 127)<91 then z$=chr$((z+128) and 255)
 2160 if zl>254 then 2100
 2170 in$=in$+z$:print z$;zd$;z$;
 2180 if z=13 then in$=mid$(in$,2):print cr$;:return
 2190 if z=20 and zl>1 then in$=left$(in$,zl-1):print"{left}";:goto 2100
 2200 if z=141 then z$=chr$(-20*(zl>1)):for z=2 to zl:print z$;:next z:goto 2090
 2210 goto 2100
 2220 b=pos(0)
 2230 a=a-1:print"{home}":for i=1 to 17:print"{down}";:next:if a=0 then return
 2240 for i=1 to 32:print"{rght}";:next:print a"{left} ":print:print:print:print tab(b);
 2250 tx=ti+60:goto 2100
 2260 a=rnd(1)*23:b=rnd(1)*18:r=int(a+1)*40+int(b)+11
 2270 c=peek(r+w):if c<64 or c>115 then 2260
 2280 if n%(c-64)=0 then 2260
 2290 return
62000 print chr$(142):scnclr
62005 print"{down}{down}";tab(15-len(pg$));pg$;"  by chris torkildson"
62010 print"{down}     cursor #";nm$;"  copyright (c) 1980{down}"
62020 for i=1 to 10:print"{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}";:next i
62030 print"{down}find a fortune!"
62050 print"{down}{down}{down}press {rvon}return{rvof} to begin"
62060 getkey t$
62070 scnclr:clr:cr$=chr$(13):goto 100
