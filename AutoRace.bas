  100 color 0,1:color 4,1:color 1,2:scnclr
  110 row=10:col=3: gosub 6110 : print "the longest automobile race, 1908" : print
  120 print:print tab(7) "(c) david h. ahl, 1986":row=20: col =11: gosub 6110
  130 rem 
  140 rem initialization
  150 dim la$(20), lb$(20), tx(20), c(20), wx(20), dx(20)
  160 dim fa$(20), fb$(20), fc$(20), ft(2, 20), fl(2, 20)
  170 z = 1000 : gf = .25 : rem starting cash and gas price
  180 gosub 2970 : rem initialize text variables
  190 gosub 3060 : rem initialize location data
  200 gosub 3310 : rem initialize mechanical breakdown data
  210 print "press any key"
  220 getkey k$
  230 rn = rnd(0) : gosub 4010: print"iniializing..."
  240 rem 
  250 rem main program
  260 j = j + 1 : t = 0 : gosub 3710 : gosub 3630 : rem new location, road data, etc.
  270 da = 0 : w = wx(j) : d = dx(j) : te = tx(j) : rem set variables for new location
  280 gosub 940 : rem print the date
  290 print "you are at " la$(j) ", " lb$(j) "."
  300 print "you currently have "; : print using "#$####.##";z : if j = 1 then 420
  310 if fx = 0 then 340 : rem any unfixed mechanical parts?
  320 print "a sympathetic garage owner will fix the"
  321 print fa$(fx) " here." : fx = 0
  330 tz = int(1 + 3 * rnd(1)) : print "it will take" tz "day(s)." : gosub 2590
  340 if j > 7 and j < 11 then gosub 2290 : rem ocean voyage?
  350 if jv = 1 then jv = 0 : tl = tl + te : goto 260 : rem end of ocean voyage?
  360 print : print "you have driven" int(dc) "miles in"
  361 print td "days."
  370 if j = 20 then 3740 : rem finished the race?
  380 if td < tl then 400 :else if td = tl then 410
  390 print "the race leader passed this point" 
  391 print td - tl "day(s) ago." : goto 420
  400 print "you are the race leader and are"
  401 print tl - td "day(s) ahead." : goto 420
  410 print "you and the italian zust are running"
  411 print "even with each other."
  420 tl = tl + te : rem elapsed time of race leader
  430 if j = 7 or j = 12 then gosub 2290 : rem ocean voyage after land segment?
  440 if jv = 1 then jv = 0 : goto 260 : rem end of ocean voyage?
  450 print "roads to the west of here are "
  451 print c$(c(j)) "."
  460 print "the weather forecast is "
  461 print w$(w) "."
  470 print "you set a goal of making" d "miles"
  471 print "in the next" te - 2 "days."
  480 gosub 640 : rem buy gas and oil
  490 gosub 730 : rem get desired speed
  500 gosub 820 : rem get desired driving hours per day
  510 rem 
  520 rem go through this race segment day by day
  530 tz = 1 : gosub 2590 : rem increment through each day of travel
  540 gosub 1120 : rem weather subroutine
  550 gosub 1640 : rem mechanical breakdown subroutine
  560 gosub 1930 : rem accident subroutine
  570 dd = sp * hp * pw : da = da + dd : dc = dc + dd : rem daily and cumulative distances
  580 gm = .07 * dd * (.8 + .4 * rnd(1)) : rem gas used today
  590 if gm < gg then gg = gg - gm : goto 620 : rem subtract gas used from supply
  600 sound 1,643,60 : sound 1,643,60 : sound 1,643,60 : gosub 940 : print "you ran out of gas on the road."
  610 gf = .33 : gosub 640 : gg = gg - gm : rem buy gas
  620 if da >= d then 260 :else 520 : rem complete a travel segment?
  630 rem 
  640 rem fuel and oil subroutine
  650 gp = gf * (.7 + .6 * rnd(1)) : print "gas costs" int(100 * gp) "cents per":print "gallon here."
  660 print "how many gallons do you want for the"
  661 input "segment ahead"; gg
  670 gf = .25 : zn = gg * gp : print "that will cost"; : print using "#$###.##";zn
  680 gosub 2660 : rem do you have enough money?
  690 if a = 0 then return : rem enough money now?
  700 if z < 2 then print "your car won't run on fumes.": print "it's all over." : goto 3910
  710 gg = int(z / gp) : print "sorry, you could only get": print gg "gallons." : return
  720 rem 
  730 rem input desired speed subroutine
  740 input "how fast (mph) do you want to drive";sp
  750 if sp > 54 then print "top speed of your car is only 54 mph." : goto 740
  760 if sp < 8 then print "at that rate, you'll never get there." : goto 740
  770 if w < 3 and sp > 30 then 780 :else 790
  780 print "that's too fast for these weather and"
  781 print "road conditions." : goto 740
  790 pb = sp * sp / 7000 : rem probability of mechanical breakdown is related to speed
  800 return
  810 rem 
  820 rem input desired driving hours subroutine
  830 k = 0 : rem counter for pushing too hard
  840 print "how many hours do you want to drive"
  841 input "each day"; hp
  850 if k = 1 then 910 : rem did we ask about pushing too hard already?
  860 if hp > 8 then print "that's too much for both you and your": print "car." : goto 840
  870 if hp < 2 then print "no one is that lazy!" : goto 840
  880 hc = hc + hp : if j > 2 and hc / j > 7.55 then 890 :else 910
  890 print "you've been pushing yourself and your"
  891 print "crew pretty hard."
  900 print "you should probably back off a bit." : k = 1 : goto 840
  910 pf = hp ^ 3 / 1000 - .15 : if pf < .01 then pf = .01 : rem probability of fatigue problem
  920 return
  930 rem 
  940 rem date subroutine
  950 if tt = td then return : rem printed this date already?
  960 if td < 19 then 990 :else if td < 50 then 1000 :else if td < 80 then 1010
  970 if td < 111 then 1020 :else if td < 141 then 1030 :else if td < 172 then 1040
  980 if td < 203 then 1050 :else gosub 3630 : goto 1070
  990 mo$ = "february" : md = td + 11 : goto 1060
 1000 mo$ = "march" : md = td - 18 : goto 1060
 1010 mo$ = "april" : md = td - 49 : goto 1060
 1020 mo$ = "may" : md = td - 79 : goto 1060
 1030 mo$ = "june" : md = td - 110 : goto 1060
 1040 mo$ = "july" : md = td - 140 : goto 1060
 1050 mo$ = "august" : md = td - 171
 1060 print : print "date: " mo$; md ", 1908" : tt = td : return
 1070 print : print "it's september 1 and the winning car"
 1071 print "crossed the finish line in paris over"
 1080 print "a month ago. your factory refuses to"
 1090 print "give you any more money to continue."
 1091 print "better luck next time."
 1100 goto 3890
 1110 rem 
 1120 rem weather subroutine
 1130 on w goto 1150, 1230, 1290, 1350, 1350, 1490
 1140 rem 
 1150 rem heavy snow and blizzard conditions
 1160 rn = rnd(1) : if rn < .33 then 1170 :else if rn > .83 then 1190 :else 1210
 1170 gosub 960 : pw = .03 + .08 * rnd(1) : rem speed factor in blizzard
 1180 print "blizzard conditions. tough going today." : gosub 3710 : return
 1190 gosub 960 : pw = .05 + .1 * rnd(1) : rem speed factor in very heavy snow
 1200 print "you're stuck in a huge snow drift." : gosub 1530 : return
 1210 pw = .14 + .17 * rnd(1) : return : rem speed factor on heavy snow day
 1220 rem 
 1230 rem snow conditions
 1240 if rnd(1) < .1 then 1260 : rem 10% chance of getting stuck in snow
 1250 pw = .3 + .4 * rnd(1) : return : rem speed factor on normal snowy day
 1260 pw = .15 + .1 * rnd(1) : gosub 960 : print "you have skidded into a ditch."
 1270 gosub 1530 : return : rem hire farmer to pull you out of ditch?
 1280 rem 
 1290 rem rainy weather
 1300 if rnd(1) < .2 then gosub 960 : goto 1320 : rem bogged down in mud?
 1310 pw = .35 + .4 * rnd(1) : return : rem speed factor on normal rainy day
 1320 pw = .02 + .04 * rnd(1) : print "you are totally bogged down in the mud."
 1330 gosub 1530 : return : rem hire farmer to pull you out of mud?
 1340 rem 
 1350 rem cloudy and mixed weather
 1360 rn = rnd(1) : if rn > .08 then 1470 :else gosub 960 : rem normal cloudy day?
 1370 if rn < .01 then print "an unexpected downpour!" : goto 1320
 1380 print "river ahead with no bridge. some locals"
 1381 print "tell you there is a bridge some"
 1390 print "distance' north. they also offer to"
 1391 print "take you across by boat"
 1400 zn = 3 + 2 * int(3 * rnd(1)) : print "for $" zn; : input ". want to go by boat";a$
 1410 gosub 3530 : if a = 1 then 1450 : rem not willing to pay?
 1420 gosub 2660 : rem go to pay the bill routine
 1430 if a = 1 then 1450 : rem still not enough money?
 1440 print "they got you across in" 2 + int(3 * rnd(1)) "hours." : pw = .3 : return
 1450 tz = int(1 + 2 * rnd(1)) : print "it took" tz "day(s) for you to drive": print "north ";
 1460 print "and find the bridge." : gosub 2590 : return
 1470 pw = .4 + .4 * rnd(1) : return : rem normal cloudy day
 1480 rem 
 1490 rem clear and sunny
 1500 if rnd(1) < .025 then gosub 960 : goto 1380 : rem river with no bridge
 1510 pw = .45 + .5 * rnd(1) : return : rem normal sunny day
 1520 rem 
 1530 rem pull you out of ditch subroutine
 1540 zn = 5 * int(1 + 4 * rnd(1)) : print "a farmer offers to pull you out": print "for $" zn
 1550 input "do you want to pay him to pull you out";a$ : gosub 3530
 1560 if a = 1 then 1610 : rem not willing to pay?
 1570 gosub 2660 : rem if not enough money try to get some
 1580 if a = 1 then 1610 : rem still not enough money?
 1590 rq = int(1.5 + 5 * rnd(1)) : print "it took" rq "hours for him to pull": print "you out."
 1600 if rq < 5 then return :else tz = 1 : gosub 2590 : pw = pw * 1.5 : return
 1610 tz = int(1 + 1.3 * rnd(1)) : print "it took" tz "day(s) for you and your"
 1620 print "mechanic to pull the car out by": print "yourselves." : gosub 2590 : pw = pw * 1.5 : return
 1630 rem 
 1640 rem mechanical breakdowns subroutine
 1650 if rnd(1) > pb then return : rem if no mechanical breakdown then return
 1660 f = int(1 + 15 * rnd(1)) : if f > 13 then f = int(14 + 5 * rnd(1)) : rem what malfunction
 1670 sound 1,643,60 : sound 1,643,60 : sound 1,643,60 : gosub 940 : rem sound warning beeper and print date
 1680 print "uh oh. you have a problem. it's a ": print fa$(f) "."
 1690 print "here's what you can do about the": print "problem:"
 1700 print tab(3) "(1) try to keep going with it"
 1710 print tab(3) "(2) " fb$(f) ", cost $" fl(1, f)
 1720 if fc$(f) = "" then 1740 : rem only one way to fix it?
 1730 print tab(3) "(3) " fc$(f) ", cost $" fl(2, f)
 1740 input "which would you like to do";fq
 1750 if fq = 1 then 1840 : rem decided to do nothing?
 1760 if fq = 2 or fq = 3 then 1770 :else print "please enter a number." : goto 1740
 1770 fq = fq - 1 : fu = ft(fq, f) : if fu < 8 then fd$ = "hours" :else 1790
 1780 if fu < 5 then 1810 :else tz = 1 : goto 1800 : rem lose a day for repairs?
 1790 fu = ft(fq, f) / 8 : tz = fu : if fu = 1 then fd$ = "day" :else fd$ = "days"
 1800 pw = pw * 1.5 : gosub 2590 : rem allow for 1/2 day driven & increase day counters
 1810 zn = fl(fq, f) : print "repairs will take" fu;fd$: print " and will cost $" zn
 1820 gosub 2660 : rem pay the repair bill
 1830 if a = 0 then return : rem enough money?
 1840 print "you try to nurse the car along to the": print "next major city."
 1850 if fx = 0 then 1870 : rem any unfixed malfunction?
 1860 print "but with the other problem you just": print "can't make it and" : goto 1890
 1870 if rnd(1) > .4 then 1900 : rem 60% chance that you can nurse it along
 1880 gosub 3710 : print : print "unfortunately, it just won't make it": print "and"
 1890 print "reluctantly you admit defeat." : goto 3890
 1900 print "it looks like you'll make but at a": print "drastically reduced speed."
 1910 pw = pw * .5 : fx = f : return : rem cut speed factor in half, note unfixed item
 1920 rem 
 1930 rem accidents and special situations subroutine
 1940 if rnd(1) > pf then 2100 : rem if driving long hours is not a problem, go on
 1950 sound 1,643,60 : sound 1,643,60 : sound 1,643,60 : sound 1,643,60 : gosub 940 : print "you dozed off and your car has run ";
 1960 on int(1 + 4 * rnd(1)) goto 1970, 1980, 1990, 2000, 2000
 1970 print "into a tree." : tz = 2 : zn = 24 : goto 2010
 1980 print "off the road." : tz = 1 : zn = 12 : goto 2010
 1990 print "into a gaping hole." : tz = 1 : zn = 18 : goto 2010
 2000 print "into a farmer's wagon." : tz = 2 : zn = 25
 2010 print "you can try to fix it or get a tow to" : print "the next village for $15."
 2020 print "want to try to bang out the damage on" : input "the spot";a$ : gosub 3530
 2030 if a = 0 then 2070 :else print "the tow costs $15 and the repairs": print "cost $" zn
 2040 zn = zn + 15 : gosub 2660 : rem pay the bills
 2050 if a = 0 then 2100 : rem enough money now?
 2060 print "the locals impound your car for your": print "unpaid debt." : goto 3890
 2070 print "you finally manage to do it but it": print "takes" tz "day(s)."
 2080 pw = pw * 1.5 : gosub 2590 : rem allow for 1/2 day driven & increase day counters
 2090 rem 
 2100 rem drive on railraod ties routine
 2110 if j< >2 and j< >5 and j< >13 and j< >14 then 2190 : rem in area with railroads?
 2120 if rnd(1) > .4 then 2190 :else gosub 940 : rem 40% chance to drive on rwy tracks
 2130 print "in this area of terrible roads, you can"
 2131 print "save some time by driving on the"
 2140 print "railroad tracks. however, it is murder"
 2141 print "on your wheels, tires, and whole car."
 2150 input "want to drive on the tracks";a$
 2160 gosub 3530 : if a = 1 then return
 2170 pw = pw * 1.7 : pb = pb * 1.25 : return : rem increase speed and chance of trouble
 2180 rem 
 2190 rem no grease routine
 2200 if j< >15 and j< >16 then return : rem in central russia?
 2210 if rnd(1) > .2 then return : rem 20% chance of no grease
 2220 sound 1,643,60 : sound 1,643,60 : sound 1,643,60 : gosub 940 : print "your differential is dry and there is"
 2230 print "no grease available here. however, you"
 2231 print "can get vaseline."
 2240 input "want to use it in place of grease";a$ : gosub 3530
 2250 if a = 0 then print "okay, you buy 20 jars for $4." : z = z - 4 : return
 2260 print "the gears sound horrible. you'll have"
 2261 print "to cut your speed in half."
 2270 pw = pw * .5 : return
 2280 rem 
 2290 rem ocean voyage subroutine
 2300 jv = 1 : tz = int(1 + 3.5 * rnd(1)) : rem length of time in port
 2310 if j = 12 then 2510 :else if j = 10 then 2480
 2320 if j = 9 then 2420 :else if j = 8 then 2390
 2330 print "you're stuck in port for" tz + 1
 2331 print "days before you can get a steamer for"
 2340 print "seattle. you use the time to get new"
 2341 print "countershaft housings, springs,"
 2350 print "wheels, drive chains, and tires."
 2360 if z > 300 then print "the cost of these items is $164." : z = z - 164 : goto 2380
 2370 print "these were all furnished by the local"
 2371 print "thomas flyer dealer."
 2380 tz = tz + 1 : td = td + 3 : gosub 2590 : gosub 3660 : return
 2390 print "it took 3 days on the steamer. the next"
 2391 print "steamer for valdez leaves in"
 2400 print tz "days. nothing to do but wait." : gosub 2590
 2410 gosub 3660 : td = td + 7 : return
 2420 print "the steamer made many stops up the"
 2421 print "coast and it took 7 days. it is"
 2430 print "apparent that the race organizers have"
 2431 print "never been in alaska and have no idea"
 2440 print "that it is impossible to drive on the"
 2450 print "snow and ice at all, much less across"
 2451 print "the bering strait to russia. you'll"
 2460 print "have to return to seattle. next"
 2461 print "steamer goes in" tz "days."
 2470 gosub 2590 : gosub 3660 : td = td + 7 : return
 2480 print "it took 7 days to get back to seattle."
 2481 print "now you have a" tz "day wait"
 2490 print "before you can get a freighter for"
 2491 print "japan."
 2500 gosub 2590 : gosub 3660 : td = td + 21 : return
 2510 print "the freighter across the pacific takes"
 2511 print "a leisurely 21 days making stops at"
 2520 print "hawaii, guam, and the philippines."
 2521 print "also the chinese crewmen made sandals"
 2530 print "out of your leather fenders and mud"
 2540 print "flaps. you can't replace them in japan,"
 2541 print "but you can at vladivostock, russia."
 2550 print "there you'll have to spend several days"
 2551 print "arranging for fuel also. but hurry now."
 2560 print "a steamer to russia leaves tonight."
 2570 gosub 3660 : td = td + 7 : return
 2580 rem 
 2590 rem time delay and hotel bills routine
 2600 t = t + tz : td = td + tz : rem increment time counters
 2610 zn = 10 * tz : gosub 2660 : rem pay for hotel and meals
 2620 if a = 0 then return : rem did we have enough money?
 2630 print : print "you don't even have enough money to pay": print "for meals."
 2640 print "that's the end of the road for you." : print : goto 3890
 2650 rem 
 2660 rem pay the bills routine
 2670 if z < zn then gosub 2710 :else 2690 : rem enough money to pay bills?
 2680 if z < zn then a = 1 : return : rem couldn't get money from home
 2690 z = z - zn : a = 0 : return : rem subtract money from kitty
 2700 rem 
 2710 rem need more money subroutine
 2720 zb = zb + 1 : if zb < 3 then zw = 1000 :else zw = 500 : rem money request and amount
 2730 print : print "you don't have enough money to"
 2731 print "continue. your only hope is to send a"
 2740 print "telegram back to mr. thomas at the"
 2741 print "factory and ask for more money."
 2750 print "remember, telegrams in 1908 used all"
 2760 print "capital letters, had no commas, and"
 2761 print "were short."
 2770 input "what is your message";a$ : print "sending telegram now..."
 2780 gosub 3590 : if zb > 3 then 2940
 2790 as = 0 : ap = 0 : l = len(a$) : if l < 12 then 2920
 2800 for i = 1 to l - 2 : at$ = mid$(a$, i, 3) : rem look at 3-letter groups in telegram
 2810 if at$ = "ple" or at$ = "beg" or at$ = "sor" or at$ = "imp" then ap = 1
 2820 if at$ = "soo" or at$ = "qui" or at$ = "ear" or at$ = "fas" or at$ = "hur" then as = 1
 2830 if at$ = "imm" or at$ = "onc" or at$ = "urg" then as = 1
 2840 next i : if ap = 0 then 2880 :else if as = 0 then 2860
 2850 print "mr. thomas wired back $ "zw" and said": print "'good luck!" : z = z + zw : return
 2860 print "mr. thomas didn't know you needed the": print "money right away and waited"
 2870 print "3 days before wiring back $" zw : z = z + zw : tz = 3 : gosub 2590 : return
 2880 if as = 0 then 2910
 2890 print "mr. thomas wired back, rem you could at": print "least be polite,' but did"
 2900 zw = zw / 2 : print "include a draft for $" zw : z = z + zw : return
 2910 print "mr. thomas was offended by your": print "telegram and refused to" : goto 2930
 2920 print "your message was short all right."
 2930 print "too short. mr. thomas didn't send any"
 2931 print "money. sorry." : return
 2940 print "mr. thomas wires back: i am fed up"
 2941 print "with this adventure stop"
 2950 print "you will get no more money from me"
 2951 print "stop" : return
 2960 rem 
 2970 rem subroutine to put verbal data into constants
 2980 for i = 1 to 6 : read c$(i) : next i
 2990 for i = 1 to 6 : read w$(i) : next i
 3000 data "hard packed gravel", "muddy ruts", "slightly improved wagon tracks"
 3010 data "built for narrow carts", "practically non-existent", "horrible"
 3020 data "blizzard conditions", "snow and sleet", "rain"
 3030 data "cloudy with a chance of rain", "mixed", "sunny and dry"
 3040 return
 3050 rem 
 3060 rem location, expected weather, road conditions, need to use rail,
 3070 rem   expected days to next location, distance to next location
 3080 for i = 1 to 20 : read x, la$(i), lb$(i), wx(i), c(i), tx(i), dx(i) : next i
 3090 return
 3100 data 1, "new york", "new york",     2, 1, 8, 897
 3110 data 2, "kendallville", "indiana",   1, 1, 6, 166
 3120 data 3, "chicago", "illinois",     3, 2, 7, 634
 3130 data 4, "omaha", "nebraska",     6, 3, 4, 482
 3140 data 5, "laramie", "wyoming",     2, 3, 7, 467
 3150 data 6, "ogden", "utah",       6, 1, 8, 1237
 3160 data 7, "san francisco", "california",   5, 7, 8, 0
 3170 data 8, "seattle", "washington",     5, 7, 8, 0
 3180 data 9, "valdez", "alaska",     5, 7, 8, 0
 3190 data 10, "seattle", "washington",    5, 7, 25, 0
 3200 data 11, "kobe", "japan",       4, 4, 4, 350
 3210 data 12, "tsuruga", "japan",     4, 7, 7, 0
 3220 data 13, "vladivostock", "russia",   3, 5, 15, 558
 3230 data 14, "tsitsihar", "manchuria",   5, 6, 10, 659
 3240 data 15, "chita", "russia",     3, 3, 8, 1116
 3250 data 16, "kansk", "russia",     4, 3, 6, 1075
 3260 data 17, "omsk", "russia",     5, 1, 7, 820
 3270 data 18, "perm", "russia",     3, 2, 14, 1090
 3280 data 19, "st. petersburg", "russia",   3, 1, 8, 1575
 3290 data 20, "paris", "france",     0, 0, 0, 0
 3300 rem 
 3310 rem mechanical breakdown descriptions, time to fix, cost
 3320 for i = 1 to 18
 3330 read x, fa$(i), fb$(i), fc$(i), ft(1, i), fl(1, i), ft(2, i), fl(2, i) : next i : return
 3340 data 1, "tire blowout", "patch the hole", "replace the tire",     2, 1, 2, 7
 3350 data 2, "skipping cylinder", "new spark plugs", "grind cylinder",    1, 2, 8, 2
 3360 data 3, "rough running engine", "do a tune up", "",       4, 5, 0, 0
 3370 data 4, "binding axle bearing", "regrind bearing", "get a new one",   8, 2, 4, 8
 3380 data 5, "cracked spring", "new spring", "weld angle iron to it",     8, 26, 8, 4
 3390 data 6, "cracked wheel", "new wheel", "weld brace on it",       2, 42, 8, 4
 3400 data 7, "slipping clutch", "adjust clutch", "new clutch plate",     4, 4, 8, 54
 3410 data 8, "stripped gear", "weld teeth back on", "new gear",     16, 6, 8, 24
 3420 data 9, "radiator leak", "weld a patch on it", "",       4, 2, 0, 0
 3430 data 10, "brakes failure", "replace the linings", "",       8, 7, 0, 0
 3440 data 11, "crack in the countershaft housing", "a new housing", "",   24, 40, 0, 0
 3450 data 12, "broken drive pinion", "weld teeth back on", "new pinion",   16, 6, 8, 18
 3460 data 13, "broken rear axle", "get a new axle", "",       16, 68, 0, 0
 3470 data 14, "cracked transmission housing", "new one from factory", "",   24, 60, 0, 0
 3480 data 15, "broken motor support", "make a new one of scrap iron", "",   16, 16, 0, 0
 3490 data 16, "worn down clutch shaft", "a new clutch shaft", "",     8, 28, 0, 0
 3500 data 17, "cracked frame", "weld on braces of angle iron", "",     24, 26, 0, 0
 3510 data 18, "total transmission failure", "a new one from factory", "",   40, 225, 0, 0
 3520 rem 
 3530 rem check for yes or no answer
 3540 if a$ = "" or a$ = "y" or a$ = "y" then a = 0 : return
 3550 if a$ = "n" or a$ = "n" then a = 1 : return
 3560 print "don't understand your answer of ";a$; "."
 3570 input "please enter y for rem yes' or n for rem no.'";a$ : goto 3530
 3580 rem 
 3590 rem telegraph routine
 3600 for i = 1 to 4 : x = 1 + 3 * rnd(1) : for k = 1 to x : sound 1,643,60 : next k
 3610 for k = 1 to 500 : next k : next i : return
 3620 rem 
 3630 rem warning beeper routine
 3640 print : for i = 1 to 3 : sound 1,643,60 : sound 1,643,60 : for k = 1 to 500 : next k : next i : return
 3650 rem 
 3660 rem ready to go? routine
 3670 print : print "press any key when you're ready"
 3680 getkey k$
 3690 return
 3700 rem 
 3710 rem pause routine
 3720 for i = 1 to 500 : next i : return
 3730 rem 
 3740 rem finished the race in paris!
 3750 for k = 1 to 3 : gosub 3720 : sound 1,643,60 : sound 1,643,60 : sound 1,643,60 : next k : scnclr : x = 0
 3760 for i = 1 to 30 : for k = 1 to 100 : next k : row = 10: col = 30: gosub 6110 : print x$ : sound 1,643,60
 3770 if x = 0 then x$ = "congratulations!" : x = 1 : goto 3790
 3780 x$ = "" : x = 0 : rem x$ = 17 spaces to erase congratulations
 3790 next i : print : print
 3800 if td < tl then 3830 :else if td = tl then 3850
 3810 print "you made it to paris! the german protos"
 3811 print "beat you by" td - tl "days but"
 3820 print "just to finish is a great honor!" : goto 3860
 3830 print "you reached paris first! the next car"
 3831 print "is" tl - td "days behind."
 3840 goto 3860
 3850 print "you reached paris in a dead tie with"
 3851 print "the french motobloc!"
 3860 print : print "you reached paris in" td "days."
 3861 print "in 1908, the thomas flyer won the race reaching"
 3870 print "paris on july 30 after 169 days." : goto 3970
 3880 rem 
 3890 rem end of race and summary statistics
 3900 print : gosub 3630 : print
 3910 print "sorry you were unsuccessful. only three"
 3920 print "of the cars in the 1908 race ever"
 3921 print "finished." : print
 3930 print "in the" td "days since the start of the"
 3931 print "race on february 12, 1908, you covered"
 3940 print int(dc) "miles. you almost made it"
 3941 print "to"la$(j + 1) ", ";lb$(j + 1) ". "
 3950 print "not bad, but you can do better." : print
 3960 rem 
 3970 print : input "would you like to try again (y or n)";a$ : gosub 3530
 3980 if a = 0 then print "okay. good luck!" : gosub 3720 : scnclr : run
 3990 print "okay. so long for now." : gosub 3720 : scnclr : end
 4000 rem 
 4010 rem subroutine to print the instructions
 4020 scnclr : print "the longest automobile race, 1908" : print
 4030 print "  in this program, you are the"
 4031 print "captain of the thomas flyer team."
 4040 print "it is your job to get the car"
 4041 print "from new york to paris - east to"
 4050 print "west - as quickly as possible."
 4051 print "the race starts on febraury 12,"
 4052 print "1908."
 4060 print "  you must overcome many problems: bad"
 4061 print "weather, accidents, mechanical"
 4070 print "breakdowns, fatigue, and a lack of gas"
 4071 print "stations."
 4080 print "  for each leg of the trip, buy as much"
 4081 print "gas as you need, but no more. you car"
 4090 print "gets approximately 14 mph, although"
 4091 print "this will vary. you will carry what"
 4100 print "fuel you can and ship the rest ahead by"
 4101 print "rail to locations along your route to"
 4110 print "be held for you (called rem spotting')."
 4111 print:print tab(5)"press any key to continue.";
 4112 getkey k$ : scnclr
 4120 print "  your car has a top speed of 54 mph."
 4121 print "however, the probability of a breakdown"
 4130 print "increases substantially at speeds over"
 4131 print "35 mph. like-wise, driving more than"
 4140 print "six hours per day increases your chance"
 4150 print "of having an accident. but don't"
 4151 print "forget, this is a race."
 4160 print "  if you get stuck, you can pay someone"
 4161 print "to pull you out (costs money) or try to"
 4170 print "get out on your own (costs time)."
 4180 print "  you can choose to repair a mechanical"
 4181 print "problem on the spot or wait until the"
 4190 print "next large town to get it fixed. either"
 4191 print "choice has associated risks."
 4210 print "  if and when you run out of money, you"
 4211 print "can wire mr. thomas for more, but your"
 4220 print "request must be carefully and politely"
 4221 print "worded also, your telegram must be in"
 4230 print "all upper case letters."
 4240 print:print tab(5) "press any key to continue.";
 4250 getkey k$ : scnclr : return
 6100 rem locate row,col
 6110 poke 202,col: poke 205,row
 6120 print "{up}";:return
