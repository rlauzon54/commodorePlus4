    5 rem copyright (c) 1979, isi (p)
    6 color 0,1: color 4,1: color 1,6,7: scnclr:x=rnd(-ti)
    7 scnclr:print"{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}shuffling cards for a game of solitaire!"
    8 print:print:print:print"    i'll be ready in a few seconds"
   20 dim f(7,18),s(4),d(52),s$(4)
   21 s$(1)="S":s$(2)="Z":s$(3)="A":s$(4)="X"
   30 for x=0 to 7:for y=0 to 18:f(x,y)=0:next y:next x
   40 for x=0 to 4:s(x)=0:next x
   50 for x=0 to 52:d(x)=0:next x
  100 rem shuffle cards in deck
  110 for x=1 to 52
  120 r=int(rnd(1)*52+1)
  130 if d(r)>0 then 120
  140 d(r)=x:next x
  200 rem deal cards into piles
  210 r=52:for x=1 to 7:for y=1 to x
  220 f(x,y)=d(r)+100
  230 d(r)=0:r=r-1:next y
  240 f(x,x)=f(x,x)-100:next x
  400 rem display everything
  410 c=3:gosub 3000
  500 rem command input
  502 print"{home}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}";
  505 l=3:gosub 5000
  510 print"d=deck,row#1-7,c=card,q=quit; play={rght}{rght}?{left}{left}{left}";:input p$:p=val(p$)
  515 if (p>7)or(p<0)then 990
  517 if p>0 then 700
  520 if p$="c" then gosub 3200:goto 500:rem next card
  530 if p$<>"q" goto 600
  535 rem quitter!
  540 for x=1 to 7:for y=1 to 18
  550 if f(x,y)>100 then f(x,y)=f(x,y)-100
  560 next y:next x
  570 gosub 3100
  575 l=3:gosub 5000
  580 print"sorry, better luck next time !!!":end
  600 if p$<>"d"goto 990
  601 rem from deck to ...
  602 if d(1)=0 then 995
  603 v=d(c):s1=int((d(c)-1)/13)+1
  604 if v>13 then v=v-13:goto 604
  605 l=1:gosub 4000
  610 print"from deck to (a=aces, row#1-7){rght}{rght}?{left}{left}{left}";:input r$
  615 if r$<>"a" then 650
  618 rem deck to aces
  620 if s1<>(d(c)+12)/13 then 630
  623 if s(s1)>0 then 995
  626 goto 640
  630 if d(c)<>s(s1)+1 then 995
  640 s(s1)=d(c):x=s1:gosub 1000:gosub 6000:goto 500
  650 rem deck to row
  655 r=val(r$)
  660 y=1:if (r<1) or (r>7) then 990
  665 if y>18 then 995
  670 if f(r,y)<>0 then y=y+1:goto 665
  675 if y>1 then 680
  677 if v=13 then 690
  678 goto 995
  680 v1=f(r,y-1)
  682 if v1>13 then v1=v1-13:goto 682
  683 if v<>v1-1 then 995
  684 s2=int((f(r,y-1)-1)/26):s1=int((s1-1)/2)
  685 if s1=s2 then 995
  690 f(r,y)=d(c):print"please wait while i fix the cards !"
  695 gosub 6000:gosub 3100:goto 500
  700 rem from row to ...
  702 y=0:if f(p,1)=0 then 995
  704 rem single card in row?
  705 y=y+1:if y>18 then 995
  708 y2=f(p,y):if y2>100 then 705
  710 if f(p,y+1)<>0 then goto 730
  716 if y2>13 then y2=y2-13:goto 716
  717 goto 749
  720 rem from what card in row?
  730 l=1:gosub 4000
  735 print"from row"p"card (a,2-10,j,q,k){rght}{rght}?{left}{left}{left}";:input y$:y1=val(y$)
  740 if y$="a" theny 1=1
  741 if y$="j" theny 1=11
  742 if y$="q" theny 1=12
  743 if y$="k" theny 1=13
  744 if (y1=0) or (y1>13) then 990
  745 if y>18 then 995
  746 y2=f(p,y):if y2>100 then y=y+1:goto 745
  747 if y2>13 then y2=y2-13:goto 747
  748 if y1<>y2 then y=y+1:goto 745
  749 r=f(p,y):l=1:gosub 4000
  750 print"from ";:gosub 2050:print" row"p"to (a=aces,row#1-7){rght}{rght}?{left}{left}{left}";:input a$
  751 rem from row/card to ...
  752 s1=int((f(p,y)-1)/13)+1
  755 if a$<>"a" then 800
  756 rem from row/card to aces
  757 if f(p,y+1)>0 then 995
  758 if s1<>(f(p,y)+12)/13 then 765
  760 if s(s1)>0 then 995
  762 goto 770
  765 if f(p,y)<>s(s1)+1 then 995
  770 s(s1)=f(p,y):f(p,y)=0:if f(p,y-1)>100 then f(p,y-1)=f(p,y-1)-100
  775 print "please wait while i fix the cards !"
  780 gosub 3100:x=s1:gosub 1000:goto 500
  800 rem from row/card to row
  810 q=val(a$)
  815 z=1:if(q<1)or(q>7) then 990
  820 if z>18 then 995
  825 if f(q,z)<>0 then z=z+1:goto 820
  830 if z>1 then 850
  835 if y2=13 then 880
  840 goto 995
  850 v1=f(q,z-1)
  855 if v1>13 then v1=v1-13:goto 855
  860 if y2<>v1-1 then 995
  865 s2=int((f(q,z-1)-1)/26):s1=int((s1-1)/2)
  870 if s1=s2 then 995
  880 if f(p,y-1)>100 then f(p,y-1)=f(p,y-1)-100
  882 f(q,z)=f(p,y):f(p,y)=0
  885 y=y+1:z=z+1
  890 if f(p,y)<>0 then 882
  895 print"please wait while i fix the cards !"
  900 gosub 3100:goto 500
  950 rem errors!
  990 print"invalid response!":goto 997
  995 print"illegal play!"
  997 t=ti
  998 if (ti-t)<50 goto 998
  999 goto 500
 1000 rem display aces
 1010 print"{home}{down}{down}{down}{down}";
 1012 for x1=1 to x:print"{down}{down}";:next x1
 1020 if (s(x)=0) and (x>2) then print"{CBM-@}{CBM-@}";s$(x):return
 1025 if s(x)=0 then print"{rvon}  ";s$(x);"{rvof}":return
 1030 r=s(x):gosub 2050:print:return
 2000 rem display cards in piles
 2005 r=f(x,y)
 2010 if r=0 then print"   ";:return
 2020 if r>100 then print"VVV";:return
 2050 rem print card
 2055 r1=r
 2056 if r1>13 then r1=r1-13:goto 2056
 2057 if r<27 then print"{rvon}";
 2060 on r1 goto 2101,2102,2103,2104,2105,2106,2107,2108,2109,2110,2111,2112,2113
 2101 print" a";:goto 2200
 2102 print" 2";:goto 2200
 2103 print" 3";:goto 2200
 2104 print" 4";:goto 2200
 2105 print" 5";:goto 2200
 2106 print" 6";:goto 2200
 2107 print" 7";:goto 2200
 2108 print" 8";:goto 2200
 2109 print" 9";:goto 2200
 2110 print"10";:goto 2200
 2111 print" j";:goto 2200
 2112 print" q";:goto 2200
 2113 print" k";
 2200 r9=int((r-1)/13)+1
 2210 print s$(r9);"{rvof}";:return
 3000 rem display aces & rows
 3030 scnclr:print"rows  C1C  C2C  C3C  C4C  C5C  C6C  C7C"
 3032 print"{down}{down}{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-S}":print"aces{SHIFT--}{down}{left}{SHIFT--}{down}{left}{SHIFT--}{down}{left}{SHIFT--}{down}{left}{SHIFT--}{down}{left}{SHIFT--}{down}{left}{SHIFT--}{down}{left}{SHIFT--}{down}{left}{SHIFT--}":print"{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}{CBM-X}"
 3034 for x=1 to 4:gosub 1000:next x
 3040 gosub 3100
 3050 gosub 3500
 3060 return
 3100 rem update row display
 3110 print"{home}{down}{down}";:for y=1 to 18
 3112 y9=y-11:if y<12 then y9=1
 3114 print tab(4+((y9-1)*5));
 3120 for x=y9 to 7:print spc(2);:gosub 2000
 3150 next x:print:next y:return
 3200 rem next 3rd card in deck
 3220 if d(1)=0 then 3500
 3250 c=c+3
 3260 if (c>24) then c=3
 3270 if d(c)+d(c-1)+d(c-2)=0 then c=3
 3280 if d(c)=0 then c=c-1:goto 3280
 3500 rem update deck display
 3510 print"{home}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}deck{down}"
 3520 print"                           ":print"{up}";
 3530 if d(1)=0 then print"   ";:goto 3550
 3540 r=d(c):gosub 2050
 3550 x=0:for y=1 to 24:if d(y)<>0 then x=x+1:next y
 3560 print tab(10);"(";x;"cards left )"
 3570 return
 4000 rem back up lines then clear
 4010 for l1=1 to l:print"{up}";:next l1
 5000 rem blank lines!
 5010 for l1=1 to l
 5020 print"                                       "
 5030 next l1
 5040 for l1=1 to l:print"{up}";:next l1:return
 6000 rem remove card from deck & disp
 6010 for x=c to 24:d(x)=d(x+1):next x
 6020 if d(1)=0 then 6050
 6030 c=c-1:if c<1 then c=3
 6040 if d(c)=0 then c=c-1:goto 6040
 6050 gosub 3500:return
