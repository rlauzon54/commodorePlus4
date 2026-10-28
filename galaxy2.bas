   10 rem galaxy
   20 color 0,1: color 4,1: color 1,2: x=rnd(0):scnclr
   30 dl=15: a$="*":b$="+":c$=".":d$="*"
   40 for i=1 to 40
   50 gosub 290
   60 color 1, int(rnd(1)*15)+2: rem avoid black as a foreground color
   70 print tab(a1);a$;
   80 color 1, int(rnd(1)*15)+2: rem avoid black as a foreground color
   90 print tab(b1);b$;
  100 color 1, int(rnd(1)*15)+2: rem avoid black as a foreground color
  110 print tab(c1);c$
  120 gosub 640 : rem delay
  130 next
  140 rem display poetry
  150 z1=int(rnd(1)*25)+1
  155 print "{wht}";
  160 if z1 > 10 then 190
  170 on z1 gosub 380, 390, 400, 410, 420, 430, 440, 450, 460, 470
  180 goto 260
  190 z1=z1-10
  200 if z2 > 10 then 230
  210 on z1 gosub 480, 490, 500, 510, 520, 530, 540, 550, 560, 570
  220 goto 260
  230 z1=z1-10
  240 on z1 gosub 580, 590, 600, 610, 620
  260 gosub 640: rem delay
  270 goto 40
  280 rem random stars
  290 a1=int(rnd(1)*13)+1 : b1=int(rnd(1)*13)+13 : c1=int(rnd(1)*13)+26
  300 x=rnd(1)
  310 if x<.15 then s$=a$: a$=b$: b$=s$ : return
  320 if x<.3  then s$=b$: b$=c$: c$=s$ : return
  330 if x<.45 then s$=c$: c$=a$: a$=s$ : return
  340 if x<.6  then s$=a$: a$=d$: d$=s$ : return
  350 if x<.75 then s$=b$: b$=d$: d$=s$ : return
  360 if x<.9  then s$=c$: c$=d$: d$=s$ : return
  365 return
  370 rem poetry
  380 print "you are a traveller lost in space":return
  390 print "i am but a traveller lost in space":return
  400 print "all mankind but explorers lost in space":return
  410 print "can we find each other in space?":return
  420 print "how does life seem from up there?":return
  430 print "i can see you clearly now from here":return
  440 print "the years seen to pass so quickly":return
  450 print "we'll meet here in a million years":return
  460 print "greetings from where the rats crawl":return
  470 print "greetings from the cracks in the wall":return
  480 print "i see all that you ever are doing":return
  490 print "the sky is falling on us all!!!":return
  500 print "i'm afraid that the end is coming":return
  510 print "in which remote place can god be met?":return
  520 print "we'll meet again don't know where or when":return
  530 print "time runs quite short for you and me":return
  540 print "you grow old at the speed of light":return
  550 print "have you made peace with your maker?":return
  560 print "have you existed as a giver or a taker?":return
  570 print "will you be able to meet me out here?":return
  580 print "remember all the great times we had?":return
  590 print "we shall never leave this place till we die":return
  600 print "eternal energy beyond the dreams of man":return
  610 print "some people will always be free forever":return
  620 print "some people will never taste freedom":return
  630 rem delay by jiffies
  640 sa=ti
  650 do while ti-sa < dl: loop
  660 return
