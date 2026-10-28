   10 rem inspired by "not ok - a requiem for gw-basic"
   20 rem by mark jones lorenzo
   30 goto 100
   40 rem lenenter string
   50 print "{home}";
   60 if y = 0 then 80
   70 for i = 1 to y:print "{down}";:next i
   80 x=int((40-len(d$))/2):print spc(x);d$;
   90 return
  100 x=rnd(0)
  110 color 0, 1: color 1,2: color 4,1
  120 scnclr
  130 print "{rvon}";:d$="the decision maker":y=0:gosub 50:print "{rvof}";
  140 input "{home}{down}{down}ask your question:";a$
  150 c = int(rnd(0)*5)+5
  160 for m = 1 to c
  170 print "{home}{down}{down}{down}{down}{down}{down}{down}{down}{down}";
  180 t=int(rnd(1)*5)+1
  190 on t goto 210,220,230,240,250
  200 goto 260
  210 print "{grn}computing....           ";:goto 260
  220 print "{orng}consulting the stars... ";:goto 260
  230 print "{red}reading the entrails... ";:goto 260
  240 print "{lred}talking to the oracle...";:goto 260
  250 print "{cyn}computing....           ";:goto 260
  260 print "{wht}";
  270 for p=1 to 500:next p: rem pause for a bit    
  280 next m
  290 r=int(rnd(0)*20)+1
  300 print "{home}{down}{down}{down}{down}{down}{down}{down}{down}{down}";spc(39);
  310 print "{home}{down}{down}{down}{down}{down}{down}{down}{down}{down}";
  320 on r gosub 410,420,430,440,450,460,470,480,490,500,510,520,530,540,550,560,570,580,590,600
  330 goto 700
  410 print "{grn}it is certain": return 
  420 print "{grn}it is decidely so": return 
  430 print "{grn}without a doubt": return 
  440 print "{grn}yes, definitely": return 
  450 print "{grn}you may rely on it": return 
  460 print "{grn}as i see it, yes": return 
  470 print "{grn}most likely": return 
  480 print "{grn}outlook good": return 
  490 print "{grn}yes": return 
  500 print "{grn}signs point to yes": return 
  510 print "{yel}reply hazy. try again": return 
  520 print "{yel}ask again later": return 
  530 print "{yel}better not tell you now": return 
  540 print "{yel}cannot predict now": return 
  550 print "{yel}concentrate and ask again": return 
  560 print "{red}do not count on it": return 
  570 print "{red}my reply is no": return 
  580 print "{red}my sources say no": return 
  590 print "{red}outlook not so good": return 
  600 print "{red}very doubtful": return 
  700 print "{wht}";:print
  710 input "another? (y/n)"; t$
  720 if t$="y" then 120
  730 scnclr
