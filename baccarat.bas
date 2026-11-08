  100 rem (source unknown) edited slightly by d. kurland 11/6/75
  101 rem ported to the commodore plus/4 by ron lauzon 11/8/2026
  105 color0,1: color 4,1: color 1,8,7: x=rnd(-ti):scnclr
  110 print "welcome to casino plus/4"
  120 print "the game is baccarat": print
  130 h=0
  140 gosub 1400
  150 dim a(10),c(10)
  160 input "are you ready"; x$
  180 if x$="no" or x$="n" then 1390
  190 scnclr: input "wager"; g
  200 d=0
  210 e=0
  230 if g>100000 then 1370
  240 if g>0 then 270
  250 print "ha!ha!, very funny!!"
  260 goto 190
  270 b=1
  280 goto 740
  290 a(b)=int(rnd(1)*52)+1
  300 c(b)=a(b)-13*int(a(b)/13)
  310 if c(b)=0 then 600
  320 on c(b) goto 330,350,370,390,410,430,450,470,490,510,540,570
  330 print "ace ";:goto 620
  350 print "deuce ";:goto 620
  370 print "three ";:goto 620
  390 print "four ";:goto 620
  410 print "five ";:goto 620
  430 print "six ";:goto 620
  450 print "seven ";:goto 620
  470 print "eight ";:goto 620
  490 print "nine ";:goto 620
  510 print "ten ";:c(b)=0:goto 620
  540 print "jack ";:c(b)=0:goto 620
  570 print "queen ";:c(b)=0:goto 620
  600 print "king ";:c(b)=0
  620 if int(a(b)/13)<>a(b)/13 then 640
  630 on a(b)/13 goto 660,680,700,720
  640 if int(a(b)/13)=0 then 660
  650 on int(a(b)/13) goto 680,700,720
  660 print "of clubs": return
  680 print "of diamonds":return
  700 print "of spades":return
  720 print "of hearts":return
  740 print "your first card is a ";
  750 gosub 290
  760 gosub 1310
  770 print "your next card is a ";
  780 gosub 290
  790 gosub 1310
  800 input "do you want a card"; j$
  820 if j$="yes" or j$="y" then 870
  830 c(3)=0
  840 d=d+c(b)
  850 b=b+1
  860 goto 900
  870 print "the card is a ";
  880 gosub 290
  890 gosub 1310
  900 print: print "my first card is a ";
  910 gosub 290
  920 gosub 1340
  930 print "my next card is a ";
  940 gosub 290
  950 gosub 1340
  960 if e<10 then 990
  970 e=e-10
  980 goto 960
  990 if e<6 then 1030
 1000 print "i do not want a card"
 1010 c(6)=0
 1020 goto 1060
 1030 print "i take card"
 1040 print "the card is a ";
 1050 gosub 290
 1060 e=e+c(6)
 1070 if d<10 then 1100
 1080 d=d-10
 1090 goto 1070
 1100 print: print "your total is";d
 1110 if e<10 then 1140
 1120 e=e-10
 1130 goto 1110
 1140 print "my total is";e
 1150 if d=e then 1590
 1160 if d>e then 1200
 1170 print "i win $"g
 1180 g=-g
 1190 goto 1210
 1200 print "you win $";g
 1210 h=h+g
 1220 if h>0 then 1290
 1230 if h=0 then 1610
 1240 print "you owe me $";-h
 1250 input "do you want to try again"; k$
 1270 if k$="no" or k$="n" then 1390
 1280 goto 190
 1290 print "i.o.u. $";h
 1300 goto 1250
 1310 d=d+c(b)
 1320 b=b+1
 1330 return
 1340 e=e+c(b)
 1350 b=b+1
 1360 return
 1370 print "house limit is $100,000"
 1380 goto 190
 1390 end
 1400 input "do you want the rules of the game"; i$
 1420 if i$="no" or i$="n" then return
 1430 print "        {rvon}official rules for{rvof}"
 1435 print "       {rvon}the game of baccarat{rvof}"
 1436 print
 1440 print "the computer is shuffling six decks of"
 1450 print "cards together. the rules are as"
 1460 print "follows: the object is to be as close"
 1465 print "to possible to nine in two or three"
 1470 print "cards, face cards and tens count zero"
 1480 print "aces count as one each,all other cards"
 1490 print "count their index value.  when the"
 1495 print "total is over ten the tens unit is"
 1500 print "dropped.  example: a seven and a six"
 1510 print "totaling thirteen count as three.  the"
 1520 print "player with the higher total wins."
 1530 print "in case of a tie the computer wins. "
 1540 print: input "do you understand the rules"; o$
 1560 if o$="yes" or o$="y" then return
 1570 print "tough luck"
 1580 return
 1590 print "it is a tie. the computer wins!"
 1600 goto 1170
 1610 print "you are even-up !!"
 1620 goto 1250
 1630 end
