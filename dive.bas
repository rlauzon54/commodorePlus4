    0 clr:pg$="dive":nm$="30":goto 62000
    1 rem pat persch
    2 rem 34 houghton st.
    3 rem fredonia n.y. 14063
    4 rem
    5 rem cursor #30, may, 1982
    6 rem copyright(c)1982 the code works
    7 rem box 550, goleta, ca. 93116
    8 rem
   10 rem as of 6/1/82 gf
  100 color 0,1: color 4,1: color 1,6,7:x=rnd(-ti)
  120 gosub 1940
  200 restore:xx=0
  220 for i=2 to 8 step 2
  230 read a(i),b(i),c(i),d(i),e(i),f(i),g(i)
  235 if wd=80 and (i=2 or i=8) then a(i)=a(i)*2:f(i)=f(i)*2-1:g(i)=g(i)*2+1
  240 next i:t=0:g=0:s=1:x=crt:dd=0:b=32:bd=160
  245 a(2)=wd*2:a(4)=-2:a(6)=2:a(8)=-wd*2:f(2)=wd-1:f(4)=-wd-1:f(6)=wd+1
  246 f(8)=-wd+1:g(2)=wd+1:g(4)=wd-1:g(6)=-wd+1:g(8)=-wd-1
  250 scnclr
  260 w=crt+wd*4+12:z1=crt+wd*22+21:z3=crt+3*wd+4:q=l
  270 gosub 1260
  280 gosub 420
  290 dx=10:dy=5:hx=3:hy=15
  300 at=ti+5
  310 get rr$:if rr$="q" then 1540
  311 if rr$=chr$(145) then rr$="8"
  312 if rr$=chr$(17) then rr$="2"
  313 if rr$=chr$(157) then rr$="4"
  314 if rr$=chr$(29) then rr$="6"
  315 if rr$<>"" then r=val(rr$):if r<2 or r>8 then r=1
  320 if ti<at then 310
  330 if dx<>10 or dy<>5 then q=q-1
  340 gosub 1700:if q=0 then print"{home}out of air!":for z=1 to 900:next:gosub 1120:goto 300
  350 if(r and 1)=0 then gosub 545:if xx then 1520
  360 if dx>=19 and dx<=21 and dy>20 then gosub 720
  370 if dx=10 and dy=5 then gosub 770
  380 gosub 870:if xx then 1520
  390 if t=6 and dg=0 then 1520
  400 goto 300
  420 print"{home}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}";tab(20);"{CBM-M}***{CBM-G}{left}{left}{left}{left}{left}{down}{CBM-M}***{CBM-G}{left}{left}{left}{left}{down}{CBM-T}{CBM-T}{CBM-T}{home}":return
  430 poke w,bd
  440 poke w-wd,b(r)
  450 poke w+wd,c(r)
  460 poke w-1,d(r)
  470 poke w+1,e(r)
  480 return
  510 poke w-wd,b:poke w,b:poke w-1,b
  520 poke w+1,b:poke w+wd,b:return
  545 rem
  550 x1=peek(w+f(r)):x2=peek(w+a(r)):x3=peek(w+g(r))
  560 if x1=45 or x2=45 or x3=45 or x1=62 or x2=62 or x3=62 then poke x,b:x=w+a(r)-3:goto 1010
  570 if x1<>32 or x2<>32 or x3<>32 then return
  580 if r=2 and dy=23 then return
  590 if r=4 and dx=-1 then return
  600 if r=6 and dx=36 then return
  610 gosub 510:w=w+a(r)/2
  620 gosub 430
  670 on r/2 goto 680,690,700,710
  680 dy=dy+1:return
  690 dx=dx-1:return
  700 dx=dx+1:return
  710 dy=dy-1:return
  720 if t>5 or dg=1 then return
  730 t=t+1:dg=1:bd=170:poke w,bd
  750 if t<4 then poke z1+t-1,32:return
  760 poke z1+wd+t-4,32:return
  770 if g>5 or dg=0 then return
  780 poke z3+g,42:dg=0:g=g+1:bd=160:poke w,bd
  785 if t<6 then if q<l then forq=q to l:gosub 1700:next
  790 return
  870 if s=0 then 910
  880 rn=int(14*rnd(1))+5
  890 x=crt
  900 s=0:x=x+wd*rn:y=x
  910 z=peek(x+3)
  920 if z=160 then 1010
  930 if z=87 then 1010
  940 if z=28 then 1010
  950 if z=47 then 1010
  960 poke x,b:poke x+1,b
  970 poke x+2,45:poke x+3,62
  980 if x>y+35 then x=x+1:s=1
  990 x=x+1:return
 1010 for i=1 to 3
 1030 x=x+3:poke x,b
 1040 poke x+i,42:poke x-i,42
 1050 poke x+wd*i,42:poke x-wd*i,42
 1060 ax=ti+5
 1070 if ti<ax then 1070
 1080 poke x+i,b:poke x-i,b
 1090 poke x+wd*i,b:poke x-wd*i,b
 1100 x=x-3
 1110 next i
 1120 rem
 1130 dy=5:dx=10:q=l:bd=160
 1140 w=crt+wd*4+12:dg=0:dd=dd+1:s=1
 1150 xx=0:if dd=5 then xx=1:return
 1160 scnclr:gosub 420
 1170 gosub 1260
 1180 gosub 1320
 1210 return
 1260 print"                           "
 1270 print"  {CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-I}{CBM-I}{rvon} {rvof}{CBM-I}{CBM-@}{CBM-@}{CBM-@}"
 1280 print"  {CBM-*}{rvon} {rvof}      {rvon} {rvof}{SHIFT-POUND} "
 1290 print"{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}"
 1293 z=crt+2*wd+4
 1294 if dd<4 then for n=dd to 3:poke z+n,87:next n
 1295 r=8:gosub 430
 1300 return
 1320 if g>0 then fori=1 to g:poke z3+i-1,42:next i
 1335 q=l
 1350 if t=0 then return
 1360 on t goto 1420,1410,1400,1390,1380,1370
 1370 poke z1+wd+2,32
 1380 poke z1+wd+1,32
 1390 poke z1+wd,32
 1400 poke z1+2,32
 1410 poke z1+1,32
 1420 poke z1,32
 1430 return
 1440 data 80,160,87,77,78,39,41
 1450 data -2,78,77,87,160,-41,39
 1460 data 2,77,78,160,87,41,-39
 1470 data -80,87,160,78,77,-39,-41
 1480 data "terrible!","poor","fair"
 1490 data "good","very good","excellent"
 1520 for n=1 to 1000:next n
 1540 scnclr: print"{down}{down}  you have salvaged";g;" treasure";:if g<>1 then print"s";
 1545 print" out of"
 1550 print"{down}  a possible 6, and have sacrificed"
 1560 print"{down}  the lives of";dd;"diver";:if dd<>1 then print"s";
 1565 print". this gives"
 1570 print"{down}  you an overall score of"100*g-4*dd" which is"
 1590 p=int((100*g-4*dd+60)/132)+1
 1600 for i=1 to 6:read s$(i):next
 1610 print"{down}      {rvon}";s$(p)
 1615 print:print:for n=1 to 10:print"CCCC";:next
 1630 print:print "{down}{down}do you want to play again";
 1650 get z$:if z$<>"" then 1650
 1660 z$=""
 1670 print"? ";:gosub 60000:d$=in$
 1680 if left$(d$,1)<>"n" then 200
 1690 scnclr:end
 1700 print"{home}air: ";
 1710 z=int(q/8):if z>0 then print "{rvon}";left$("            ",z);
 1720 z=q-z*8:printmid$("{rvof} {rvof}{CBM-G}{rvof}{CBM-H}{rvof}{CBM-J}{rvof}{CBM-K}{rvon}{CBM-L}{rvon}{CBM-N}{rvon}{CBM-M}",2*z+1,2);
 1730 print:return
 1940 print"{down}how hard a game?"
 1950 print"{down} (1=easy, 2=medium, 3=hard) ? ";
 1960 gosub 60000:l=val(in$)
 1965 if in$="" then print"{down}{down}let's make it medium.":l=2:for x=1 to 1000:next
 1970 if l<1 or l>3 then print"{down}1, 2, or 3, please.":goto 1940
 1980 if l<>int(l) then print"{down}an integer, please.":goto 1940
 1990 l=120-20*l:return
60000 in$=" ":zt=ti:zc=2:zd$=chr$(20)
60010 get z$:if z$<>""then 60070
60020 if zt<=ti then print mid$(" {CBM-+}",zc,1);"{left}";:zc=3-zc:zt=ti+15
60030 goto 60010
60070 z=asc(z$):zl=len(in$):if(z and 127)<32 then print" {left}";:goto 60110
60080 if fl and (z and 127)>64 and (z and 127)<91 then z$=chr$((z+128) and 255)
60090 if zl>254 then 60010
60100 in$=in$+z$:print z$;zd$;z$;
60110 if z=13 then in$=mid$(in$,2):print cr$;:return
60120 if z=20 and zl>1 then in$=left$(in$,zl-1):print"{left}";:goto 60010
60130 if z=141 then z$=chr$(-20*(zl>1)):for z=2 to zl:print z$;:next z:goto 60000
60140 goto 60010
62000 print chr$(142): rem uppercase/graphics
62005 scnclr: print"{down}{down}";tab(15-len(pg$));pg$;"  by pat persch"
62010 print"{down}     cursor #";nm$;"  copyright (c) 1982{down}"
62020 for i=1 to 13:print"{SHIFT-*}{SHIFT-*}{SHIFT-*}";:next i:print"{left}{inst}{SHIFT-*}"
62030 print"{down}don't get eaten by the sharks"
62080 print"{down}{down}{down}press {rvon}return{rvof} to begin";
62090 getkey z$
62100 scnclr:clr:wd=40:crt=3072:goto 100
