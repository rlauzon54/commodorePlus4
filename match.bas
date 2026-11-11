    1 rem george macrae
    2 rem 2492 sinclair cr
    3 rem burlington,ontario
    4 rem canada l7p3m6
    5 rem
    6 rem cursor #22 sep 1980
    7 rem copyright(c)1980 the code works
    8 rem box 550, goleta, ca. 93017
    9 rem
   10 rem as of 10oct80
   20 color 0,1: color 4,1: color 1,6,7:x=rnd(-ti)
   30 clr:pg$="match":nm$="22":goto 62000
  100 dim b%(24),m%(24),g(2)
  110 bl$="                          "
  120 g(0)=0:ld$="{left}{left}{left}{left}{left}{down}"
  130 print"how many players (1-4)? ";:gosub 60000
  140 pl=val(in$)
  150 if pl>4 or pl<1 then print:goto 130
  160 for i=1 to pl
  170 print"{down}who's player";i;"{left}? ";:gosub 60000
  180 if len(in$)>8 then print"{down}eight letters or less, please":goto 170
  190 if in$="" then print"{down}i need a name, for the scoreboard.":goto 170
  200 n$(i)=in$:next i
  210 if pl>3 then 270
  220 print"{down}can i play too? ";:gosub 60000
  230 if left$(in$,1)<>"y" then 270
  240 pl=pl+1:n$(pl)="ted"
  250 print"{down}how hard shall i concentrate (1-9)? ";:gosub 60000:co=val(in$)
  260 if co<1 or co>9 then print:goto 250
  270 m=0:th=int(rnd(1)*50+50)
  280 a$="{CBM-Q}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-+}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-+}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-+}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-+}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-+}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-W}"
  290 b$="{SHIFT--}     {SHIFT--}  {$a0}{$a0}{$a0}{SHIFT--}{$a0}  {$a0}{$a0}{SHIFT--}{$a0}  {$a0}{$a0}{SHIFT--}{$a0}  {$a0}{$a0}{SHIFT--}  {$a0}{$a0}{$a0}{SHIFT--}{$a0}"
  300 print"{clr}{CBM-A}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-R}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-R}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-R}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-R}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-R}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-S}"
  310 for i=1 to 4:if i>1 then print a$
  320 for j=1 to 3:print b$:next j,i
  330 print"{CBM-Z}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-E}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-E}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-E}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-E}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-E}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-X}{home}"
  340 q$="{home}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}"
  350 for i=1 to 4:print left$(q$,4*i-2);"{rght}";
  360 for j=0 to 5:print"{rvon}     "ld$"  ";chr$(i*6+j+59)"  "ld$"     {up}{up}{rght}";
  370 next j:print:next i
  380 for i=1 to 12:c=int(rnd(1)*(th-1)+1)
  390 gosub 860:c=th-c:gosub 860
  400 next
  410 goto 450
  420 m%(i)=b%(i):if b%(i)>0 then gosub 880:print"{rght}";left$(str$(b%(i))+" ",3)
  430 return
  440 gosub 880:print"{rvon}  "chr$(i+64)"  ":return
  450 print left$(q$,18)tab(16);"{CBM-D}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-F}"
  460 print tab(16);"{rvon}{CBM-K}numbers {rvof}{CBM-K}":printtab(16);"{rvon}{CBM-K}must add{rvof}{CBM-K}"
  470 print tab(16);"{rvon}{CBM-K}up to ";mid$(str$(th)+" ",2,2);"{rvof}{CBM-K}"
  480 print tab(16);"{CBM-C}{rvon}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{CBM-I}{rvof}{CBM-V}"
  490 b$="{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}"
  500 print left$(q$,18);tab(26);"{CBM-A}";b$;"{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-S}"
  510 print tab(26);"{SHIFT--}score board{SHIFT--}":printtab(26);"{CBM-Q}";b$;"{CBM-R}{SHIFT-*}{SHIFT-*}{CBM-W}"
  520 for i=1 to 4:print tab(26);"{SHIFT--}        {SHIFT--}  {SHIFT--}":next i
  530 print tab(26);"{CBM-Z}";b$;"{CBM-E}{SHIFT-*}{SHIFT-*}{CBM-X}{home}"
  540 print left$(q$,21);
  550 for i=1 to pl:print tab(27);n$(i):next i
  560 for k=1 to pl
  570 print left$(q$,17):for i=1 to 6:print left$(bl$,13):next
  580 print left$(q$,18)n$(k)"'s turn";left$(bl$,9-len(n$(k)))
  590 for g=1 to 2
  600 print left$(q$,19+2*g)"guess #";mid$(str$(g),2);" - ";
  610 if n$(k)="ted" then on g gosub 990,1050:goto 650
  620 gosub 1110:g(g)=asc(in$)-64
  630 if g(g)<1 or g(g)>24 or g(g)=g(g-1) then 600
  640 if b%(g(g))<0 then 600
  650 i=g(g):gosub 420
  660 next g
  670 if b%(g(1))+b%(g(2))=th then m=m+1:gosub 890:goto 700
  680 for i=1 to 3000:next
  690 for g=1 to 2:i=g(g):gosub 440:next g
  700 if s(k+1)>6 then m=0:goto 740
  710 if m=12 then 740
  720 next k
  730 goto 560
  740 print left$(q$,17):for i=1 to 7:print bl$:next i
  750 if m=0 then 790
  760 print"{up}{up}{up}{up}{up}{up}{up}     {rvon}tie game":m=0:for i=1 to pl:if s(i)>m then m=s(i)
  770 next:print"  congratulations{down}":for i=1 to pl:if s(i)=m then print n$(i)
  780 next:print"{up}{up}";:goto 800
  790 print"{up}{up}{up}{up}  "n$(k+1)" wins!!!"
  800 for i=1 to 2000:next
  810 print"{down}{down}want another game? ";:gosub 1110
  820 if left$(in$,1)="n" then print"{clr}{down}{down}":end
  830 for i=1 to 24:b%(i)=0:m%(i)=0:next i
  840 for i=1 to pl:s(i)=0:next i
  850 goto 270
  860 a=int(rnd(1)*24+1):if b%(a)<>0 then 860
  870 b%(a)=c:return
  880 j=int((i-1)/6):print left$(q$,4*j+3)tab(6*(i-6*j)-5);:return
  890 print left$(q$,19+k)
  900 for i=1 to 60
  910 print tab(27);"{rvon}";n$(k);"{up}"
  920 print tab(27);n$(k);"{up}"
  930 next i:s(k)=s(k)+1
  940 for g=1 to 2:b%(g(g))=-1:i=g(g)
  950 gosub 880:print"{up}     "ld$"     "ld$"     ":m%(g(g))=-1
  960 next g
  970 print left$(q$,20+k)tab(36)right$(str$(s(k)),2)
  980 k=k-1:return
  990 rem ted
 1000 x=0:y=0:for j=1 to 23
 1010 for i=j+1 to 24:if m%(j)+m%(i)=th then x=j:y=i:goto 1040
 1020 next i,j
 1030 x=int(rnd(1)*24)+1:if m%(x)<>0 then 1030
 1040 g(1)=x:print chr$(x+64):return
 1050 for j=1 to 2000:next:if int(rnd(1)*9+1)>co then 1090
 1060 if y<>0 then i=y:goto 1100
 1070 for i=1 to 24:if m%(g(1))+m%(i)=th and g(1)<>i then 1100
 1080 next i
 1090 i=int(rnd(1)*24+1):if m%(i)<0 or g(1)=i then 1090
 1100 g(2)=i:print chr$(i+64):return
 1110 zt=ti:zc=2
 1120 get in$:if in$<>"" then 1150
 1130 if ti>zt then print mid$(" ?",zc,1);"{left}";:zc=3-zc:zt=ti+15
 1140 goto 1120
 1150 print" {left}";
 1160 if (in$>=" " and in$<"_") or (in$>=chr$(160) and in$<="{CBM-*}") then print in$;
 1170 print:return
60000 in$=" ":zt=ti:zc=2:zd$=chr$(20)
60010 get z$:if z$<>"" then 60070
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
60200 if pn=0 then 60250
60205 gosub 60500
60210 print"press {rvon}return{rvof} to ";
60220 if pn=lp then print"begin:";:goto 60240
60230 print"continue:";
60240 getkey t$
60250 if pn=lp then 60300
60260 pn=pn+1:scnclr:print pg$;" - cursor #";nm$;"  (c) 1980   page";pn
60265 gosub 60500
60270 return
60500 for i=1 to 10:print"{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}";:next i:return
62000 print chr$(142): scnclr
62005 print"{down}{down}";tab(15-len(pg$));pg$;"  by george macrae"
62010 print"{down}     cursor #";nm$;"  copyright (c) 1980{down}"
62020 gosub 60500
62030 print"{down}find numbers with a given sum."
62050 print"{down}{down}{down}press {rvon}return{rvof} to begin"
62060 getkey t$
62090 scnclr:clr:cr$=chr$(13):goto 100
