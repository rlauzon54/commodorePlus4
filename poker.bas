    1 rem copyright(c)1980 david hook
    2 rem 58 steel st.
    3 rem barrie,ontario,canada,l4m 2e9
    4 rem
    5 rem cursor #22, sep 1980
    6 rem the code works
    7 rem box 550, goleta, ca. 93017
    8 rem
   10 rem as of 08 oct 80
   20 color 0,1: color 4,1: color 1,6,7:x=rnd(-ti)
   30 clr:pg$="poker":nm$="22":goto 62000
  100 dim ds(4),a%(51),b%(4,3),h%(13),d%(1,1),o%(8),o$(8)
  110 dim a$(13),c%(10,7),s$(2,3),f$(3,7)
  120 bl$="                                       "
  130 b$="{home}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}"
  140 md$=left$(b$,14):c=52:i=rnd(-ti)
  150 for i=1 to 13:read a$(i):h%(i)=0:next
  155 data a,2,3,4,5,6,7,8,9,10,j,q,k
  160 for i=0 to 8:read o%(i),o$(i):next
  165 data 0,no pair,1,one pair,3,two pair,5,three of a kind,7,straight
  170 data 10,flush,20,full house,30,four of a kind,50,straight flush
  180 for i=1 to 10:for j=1 to 7:read c%(i,j):next j,i
  185 data 0,0,0,1,0,0,0,1,0,0,0,0,0,1,1,0,0,1,0,0,1,2,0,0,0,0,0,2,2,0,0,1,0,0,2
  190 data 2,0,0,2,0,0,2,2,0,1,0,2,0,2,2,0,2,0,2,0,2,2,0,2,1,2,0,2,2,1,2,0,2,1,2
  200 for i=1 to 3:for j=1 to 7:read f$(i,j):next j,i
  205 data "{CBM-*}{rvof} {rvon}{SHIFT-POUND}  "," {rvof}{CBM-C}{rvon}{CBM-M}{SHIFT-@} {rvon}  "," {CBM-K}{rvof}{SHIFT-POUND}{rvon}{SHIFT-POUND}{rvof}{CBM-*}{rvon}  "," {CBM-+}{SHIFT-POUND}V{rvof}{SHIFT-POUND}{rvon}{CBM-+} ","  {CBM-*}{rvof}{SHIFT-POUND}{rvon}{SHIFT-POUND}{rvof}{CBM-K}{rvon} "
  210 data "  {CBM-M}P {rvof}{CBM-F}{rvon} ","  {rvof}{SHIFT-POUND} {CBM-*}","{SHIFT-POUND}P   "," {rvof}{SHIFT-POUND}{rvon}B{CBM-N}   "," {rvof}    {rvon}{CBM-F} "," {CBM-+}VVV{CBM-+} "
  215 data " {CBM-C}{rvof}    {rvon} ","   {CBM-H}{SHIFT--}{SHIFT-POUND} ","   L{rvof}{SHIFT-POUND}","{CBM-*}{rvof}  {rvon}{SHIFT-POUND} ","  {CBM-M} {CBM-+}B "," {rvof}{SHIFT-POUND}   {CBM-C}{rvon} "
  220 data " {CBM-+}{CBM-B}{CBM-B}{CBM-B}{CBM-+} "," {rvof}{CBM-F}   {rvon}{SHIFT-POUND} "," {SHIFT--}{CBM-+} {CBM-G}  "," {rvof}{SHIFT-POUND}  {CBM-*}"
  240 for i=0 to 51:a%(i)=i:next
  250 for i=0 to 4:for j=1 to 3:b%(i,j)=0:next j,i
  260 for i=0 to 1:for j=0 to 1:d%(i,j)=0:next j,i
  270 s$="   X   Z   S   A   ":t$=" X   X Z   Z S   S A   A "
  280 for i=0 to 3:s$(0,i)="       ":s$(1,i)=mid$(s$,i*4+1,7):next
  290 for i=0 to 3:s$(2,i)=mid$(t$,i*6+1,7):next
  300 ba=1000:be=0:oh=0:hl=0:h=0:d=0:j=0:k=0:l=0:m=0:n=0:ob=0
  305 st%=0:fl%=0:sf%=0:af%=0
  360 gosub 1250
  375 rem
  380 if ba=0 then 1700
  385 for i=1 to 1000:next i
  390 be=ob:gosub 1450
  400 print"your bet? ";:gosub 60000
  405 if left$(in$,1)="q" then rk=h:gosub 1340:gosub 1300:end
  410 if in$="" then in$=str$(be)
  420 if val(in$)=0 then 390
  430 be=int(val(in$))
  431 if be<1 then print"you can't do that!":goto 385
  432 if be>ba then print"you don't have that much.":goto 385
  433 if be>10000 then print"house limit is $10000.":goto 385
  440 rk=h:gosub 1340:gosub 1490
  450 ba=ba-be:gosub 1420:gosub 1300
  460 print md$"{down}{down}";:gosub 540
  470 oh=0:gosub 600
  480 gosub 990
  490 gosub 1450:goto 380
  510 print md$;"{down}{rvon}shuffling{home}"
  520 for i=0 to 51:j=int((52-i)*rnd(1)):k=a%(j):a%(j)=a%(51-i):a%(51-i)=k
  530 next i:print md$;"{down}{down}";:return
  540 if c>44 then c=0:gosub 510
  550 for i=1 to 13:h%(i)=0:next
  560 for n=0 to 4
  570 b%(n,1)=a%(c):c=c+1:gosub 1550
  580 b%(n,2)=k:b%(n,3)=i:h%(i)=h%(i)+1
  590 next n:return
  600 st%=0:fl%=0:af%=0:sf%=0
  610 for i=1 to 4:if b%(i,2)<>b%(0,2) then i=4:fl%=0:goto 630
  620 fl%=1
  630 next i
  640 j=0:if h%(1)=1 then af%=1
  650 for i=1 to 9:if h%(i)=1 then j=i:i=9
  660 next i
  670 k=4
  680 for i=j+1 to j+k:if h%(i)=0 then i=j+k:st%=0:goto 700
  690 st%=1
  700 next i
  710 if af%=1 and st%=0 and h%(10)=1 and k=4 then j=10:k=3:goto 680
  720 for i=1 to 13:if h%(i)>1 then st%=0:i=13
  730 next i
  740 if st% and k=4 then k=j+4
  750 if st% and k=3 then k=1
  760 if st% and fl% then sf%=1
  770 if sf% then h=8:goto 940
  780 if st% then h=4:goto 940
  790 if fl% then h=5:goto 940
  800 for i=0 to 1:for j=0 to 1:d%(i,j)=0:next j,i
  810 j=0:for i=1 to 13:if h%(i)<2 then 840
  820 d%(j,0)=h%(i):d%(j,1)=i:j=j+1
  830 if j=2 then i=13
  840 next i
  850 if j=0 then h=0:goto 940
  860 if j=1 then 900
  870 for i=0 to 1:if d%(i,0)=3 then h=6:k=i:i=1:goto 890
  880 h=2
  890 next i:goto 940
  900 for i=0 to 1:if d%(i,0)=4 then h=7:k=i:i=1:goto 930
  910 if d%(i,0)=3 then h=3:i=1:goto 930
  920 h=1
  930 next i
  940 gosub 1450
  950 if oh=h then return
  960 rv$="{rvon}":rk=h:gosub 1340
  970 rk=oh:gosub 1340
  980 return
  990 for i=1 to 13:h%(i)=0:next
 1000 for i=0 to 4:ds(i)=0:next i:d$="":zc=1:zt=0
 1010 print md$"enter discards--"d$" {left}";
 1020 get z$:if z$<>"" then print" ":goto 1050
 1030 if ti>zt then print mid$("{CBM-+} ",zc,1);"{left}";:zc=3-zc:zt=ti+15
 1040 goto 1020
 1050 if asc(z$)=13 then 1150
 1060 if asc(z$)=20 and len(d$)>0 then 1110
 1070 if z$<"1" or z$>"5" or len(d$)>2 then 1010
 1080 z=val(z$)-1:if ds(z) then 1010
 1090 d$=d$+z$:ds(z)=1
 1100 print md$;"{down}{down}";tab(z*8)"discard":goto 1010
 1110 z$=right$(d$,1):z=val(z$)-1:ds(z)=0:print" "
 1120 print md$;"{down}{down}";tab(z*8)"       "
 1130 if len(d$)>1 then d$=left$(d$,len(d$)-1):goto 1010
 1140 goto 1000
 1150 gosub 1450:if len(d$)=0 then 1230
 1160 print md$;"{down}{down}{down}";
 1170 for n=0 to 4:if ds(n)=0 then 1200
 1180 b%(n,1)=a%(c):c=c+1:gosub 1550
 1190 b%(n,2)=k:b%(n,3)=i
 1200 next n
 1210 for i=0 to 4:h%(b%(i,3))=h%(b%(i,3))+1:next i
 1220 oh=h:gosub 600
 1230 ba=ba+be*(o%(h)):gosub 1420
 1240 return
 1250 scnclr:gosub 1420
 1260 t$="CCCCCCCCCCCCCCCCCCC"
 1270 print "{down}hand"tab(21)"odds"tab(32)"payoff":print t$t$"C
 1280 for rk=8 to 1 step-1:gosub 1340:next rk
 1290 print t$t$"C":return
 1300 print md$;
 1310 for i=14 to 24:print bl$:next i
 1320 print bl$;md$;"{up}"
 1330 return
 1340 if rk<1 or rk>8 then 1410
 1350 print left$(b$,13-rk);rv$;
 1360 z$=o$(rk):z$=z$+right$(bl$+str$(o%(rk)),20-len(z$))
 1370 print z$;" for 1";
 1380 z$="$"+mid$(str$(be*o%(rk)),2)
 1390 if z$="$0" then z$=""
 1400 print right$(bl$+z$,12)
 1410 rv$="":return
 1420 print"{home}cash: $";mid$(str$(ba)+bl$,2,13)
 1430 print tab(20);"{up}bet: $";mid$(str$(be)+bl$,2,13)
 1440 return
 1450 print md$;
 1460 print bl$:print bl$
 1470 print bl$;md$;"{up}"
 1480 return
 1490 if ob=be then 1540
 1500 for rk=8 to 1 step-1
 1510 print left$(b$,13-rk);
 1520 print tab(26);:gosub 1380
 1530 next rk
 1540 ob=be:return
 1550 k=int(b%(n,1)/13):i=b%(n,1)-13*k+1:s$=mid$("XZSA",k+1,1):l=8*n
 1560 print md$;"{down}{down}{down}";tab(l);"{rvon}";left$(a$(i)+bl$,7)
 1570 if i<=10 then for j=1 to 7:print tab(l);"{rvon}";s$(c%(i,j),k):next j:goto 1630
 1580 for j=1 to 7:print tab(l);"{rvon}";
 1590 if j=1 then print" ";s$;
 1600 print f$(i-10,j);
 1610 if j=7 then print"{rvon}";s$;" ";
 1620 print:next j
 1630 print tab(l);"{rvon}";right$(bl$+a$(i),7);"{home}"
 1640 return
 1700 gosub 1300:print"{rvon}you are broke!"
 1710 print"{down}want to try again? ";:gosub 60000
 1720 if left$(in$,1)<>"n" then 300
 1730 end
60000 in$=" ":zt=ti:zc=2:zd$=chr$(20)
60010 get z$:if z$<>"" then 60070
60020 if zt<=ti then print mid$(" {CBM-+}",zc,1);"{left}";:zc=3-zc:zt=ti+15
60030 goto 60010
60070 z=asc(z$):zl=len(in$):if (z and 127)<32 then print" {left}";:goto 60110
60080 if fl and (z and 127)>64 and (z and 127)<91 then z$=chr$((z+128) and 255)
60090 if zl>254 then 60010
60100 in$=in$+z$:print z$;zd$;z$;
60110 if z=13 then in$=mid$(in$,2):print cr$;:return
60120 if z=20 and zl>1 then in$=left$(in$,zl-1):print"{left}";:goto 60010
60130 if z=141 then z$=chr$(-20*(zl>1)):for z=2 to zl:print z$;:next z:goto 60000
60140 goto 60010
60200 if pn=0 then 60250
60205 gosub 60500
60210 print "press {rvon}return{rvof} to ";
60220 if pn=lp then print"begin:";:goto 60240
60230 print"continue:";
60240 getkey t$
60250 if pn=lp then 60300
60260 pn=pn+1:scnclr:print pg$;" - cursor #";nm$;"  (c) 1980   page";pn
60265 gosub 60500
60270 return
60300 scnclr:clr:cr$=chr$(13):goto 100
60500 for i=1 to 10:print"{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}";:next i:return
62000 print chr$(142):scnclr
62005 print "{down}{down}"tab(8);"cursor #";nm$;tab(26-len(pg$));pg$
62010 print "{down}copyright (c) 1980   by david hook{down}"
62020 gosub 60500
62030 print"{down}riches to rags"
62050 print"{down}{down}{down}press {rvon}return{rvof} to begin"
62060 getkey t$
62070 goto 60300
