    1 rem zap copyright 1978 tom marazita
    2 rem cursor #2 august 1978
    3 rem p.o. box 550, goleta, ca 93017
    4 rem
   20 color 0,1: color 4,1: color 1,6,7:x=rnd(-ti)
   94 print chr$(142)
   96 dim wm(255)
   99 zl=18:hp=zl-1
  100 scnclr:print"{down}{down}{down}{down}cursor #2 - zap"
  105 dim a(255):rem targets
  110 gosub 60000  
  120 scnclr
  130 po=4070
  140 s=1:rem#of t
  160 for x=3113 to 3112+38:poke x,100:next
  170 for x=3112+40 to 3072+(40*23) step 40:poke x,103:next
  180 for x=3073+(40*24) to 4070:poke x,99:next
  190 for x=4071-40 to 4071-(40*22) step-40:poke x,101:next
  195 gosub 900
  200 get k$: if k$<>"" then 200
  211 goto 410
  220 a$="8":goto 240
  230 get a$:rem main->400 ****
  235 if a$=chr$(157) then dir=-1
  240 if a$="4" then dir=-1
  250 if a$="8" then dir=-40
  255 if a$=chr$(145) then dir=-40
  260 if a$="6" then dir=1
  265 if a$=chr$(29) then dir=1
  270 if a$="2" then dir=40
  275 if a$=chr$(17) then dir=40
  280 if a$="7" then dir=-41
  290 if a$="9" then dir=-39
  300 if a$="3" then dir=41
  310 if a$="1" then dir=39
  311 if a$="5" then 770
  312 if a$=" " then 770
  320 po=po+dir
  321 if po= 4071 or po=4032 or po=3112 or po=3151 then 590:rem corners
  324 if peek(po)=102 then gosub 550:rem hit t
  325 wm(hp)=po:hp=hp+1
  326 if hp>zl then hp=0
  340 if peek(po)>98 and peek(po)<102 then 590
  345 if peek(po)>102 and peek(po)<104 then 590
  350 if peek(po)=81 then 590
  360 poke po,81
  370 r=int(rnd(1)*15)+1:if s>5 then zz=20
  375 p1=int(rnd(1)*zz)+1:zz=50
  380 if r=3 then 410
  390 if p1=3 then 480
  400 gosub 730:goto 230
  410 rem set targets
  420 if s>6 then 400
  430 q=int(rnd(1)*1000)+(3072+160 )
  435 if q>4030 then 430
  440 if peek(q)<>32 then 430
  450 s=s+1:h=h+1
  460 poke q,102
  470 a(h)=q:if cv=1 then 400
  475 cv=1:goto 220
  480 rem remove targets
  490 p=int(rnd(1)*h)+1
  500 rem
  510 if peek(a(p))<>102 then 540
  520 poke a(p),32
  530 s=s-1
  540 goto 400
  550 rem hit target
  560 sc=sc+10
  565 s=s-1
  566 zl=zl+2
  567 if zl>250 then zl=250
  570 gosub 900
  580 return
  590 cr=cr+1:rem crash
  595 gosub 900
  600 if cs>l then l=cs
  610 cs=0
  615 zl=18:hp=17
  616 tp=0
  620 cv=0
  635 for t=1 to 8  :for x=1 to 100:next:poke po,209:for x1=1 to 100:next:poke po,81:next
  636 for x=0 to 255:wm(x)=0:next:hp=17:    tp=0
  638 if cr=6 then 650
  640 goto 120
  650 scnclr:print"{down}{down}{down}{down}{down}{down}"
  660 print"your  score is"sc
  662 print
  666 print
  667 print"highest possible score:"h*10
  670 print
  675 print"you hit";int((sc/(h*10))*100);"% of the targets"
  677 get k$: if k$<>"" then 677
  680 input "{down}want to play again";pl$
  685 if left$(pl$,1)="y" then run
  700 end
  730 loc=wm(tp):tp=tp+1:rem pick tail
  740 if tp>zl then tp=0
  750 poke loc,32
  760 return
  770 for e=1 to 171:get a$:if a$<>"" then 240
  780 next e:  sc=sc-10:if sc<0 then sc=0
  790 gosub 900
  800 goto 770
  900 print"{home}{rght}{rght}{rght}score="sc;tab(18); "no. of crashes="cr
  910 return
60000 input"{down}do you need instructions";b$
60010 if left$(b$,1)="y" then 60030
60020 return
60030 scnclr:print"{down}{down}{down}{down}you control a strange missle!"
60040 print"{down}targets '{CBM-+}' appear on the screen, which"
60050 print"you try to hit.  use numbers to control"
60060 print"the missle: 8 moves you up,"
60070 print"            2 moves you down."
60080 print
60090 print"            4 moves you left"
60100 print"            6 moves you right."
60102 print
60105 print"(1, 3, 7, and 9 move you diagonally)"
60110 print
60112 print"each target is worth 10 points, but"
60125 print"your missle gets bigger after hiting a  target..."
60128 print
60130 print"the game ends after 6 crashes!"
60300 print"{down}{down}press 'space' to begin the game"
60310 getkey zz$
60320 return
60999 rem cursor p.o. box 550,goleta, ca 93017
