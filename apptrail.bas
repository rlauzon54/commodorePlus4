  100 color 0,1: color 4,1: color 1,2: x=rnd(0): scnclr: clr
  110 print "{home}{down}{down}{down}{down}{down}{down}{down}{down}{down}";:x$ = "appalachian trail":gosub 5590:print
  120 print "{down}";:x$ = "(c) by david h. ahl, 1986":gosub 5590:print
  130 print "{down}{down}{down}{down}{down}{down}{down}{down}":x$ = "press any key to continue.":gosub 5590
  140 getkey k$
  150 scnclr:gosub 5620
  160 dim hz(25), dl(25), lc$(25)
  170 db = 300 : rem new boot gives 300 extra mi
  180 rem
  190 rem data input section
  200 scnclr : print "first we need some data about you." : print
  210 input "your sex (male or female)";a$ : gosub 5540
  220 if a$<>"m" and a$<>"f" then print "answer 'm' or 'f' please." : goto 210
  230 input "your weight in pounds";wb
  240 if wb > 79 and wb < 401 then 260
  250 print "surely you jest."
  255 print"let's try that one again." : goto 230
  260 print "what is your physical condition"
  265 print"(1 = excellent, 2 = good,"
  270 input "3 = fair, 4 = poor)";pc
  280 if pc < 1 or pc > 4 then print "answer 1, 2, 3, or 4 please." : goto 260
  290 print:print "walking pace: you may change your pace"
  291 print "as the hike progresses. remember, a"
  292 print "faster pace covers the distance more"
  310 print "quickly but burns more calories and has"
  311 print "a higher risk of injury."
  320 print "slow and deliberate......1.7 mph"
  330 print "moderate and vigorous......3 mph"
  340 print "fast and very difficult....4 mph"
  350 print "at what rate in mph do you wish to walk"
  351 input "(number & decimal okay)";rw
  360 if rw < 1 or rw > 4.2 then print "a rate of" rw "mph is silly." : goto 350
  370 print:print "walking hours per day: you may change"
  371 print" this as time goes on. to start, how"
  372 input "many hours do you wish to walk per day";tw
  390 if tw > 14 then print "that's just too ambitious." : goto 380
  400 if tw * rw < 7 then print "you won't even reach nj by christmas." : goto 370
  410 print : print "your sensitivity to poison ivy:"
  420 print " (1) highly sensitive" : print " (2) moderately sensitive"
  430 print " (3) immune" : print " (4) had series of desensitization shots"
  440 input "which number describes you";ivy
  450 if ivy < 1 or ivy > 4 then print "what's that? let's try again." : goto 440
  460 print : print "people who have hiked the trail have"
  461 print "different feelings about rain:"
  462 print " (1) let it pour, i love it."
  480 print " (2) no problem as long as the sun"
  481 print "     comes out every few days."
  490 print " (3) five solid days of rain really"
  491 print "     gets me down."
  500 print " (4) if i foresee a long stretch of"
  501 print "     rain, i'll hole up in a shelter or"
  502 print "     motel and wait it out."
  520 print "which number most closely describes"
  521 input "your feeling";ra
  530 if ra < 1 or ra > 4 then print "not possible. again please." : goto 520
  540 rem
  550 rem data on what to carry
  560 print
  561 print "you must make some decisions about what"
  562 print "to pack."
  570 for i = 1 to 7 : read sp$(i) : print : print sp$(i) ":"
  580 for j = 1 to 4 : read i1$(j), i2$, w2(j), c1(j), v2(j) : print j ".. " i1$(j)
  581 print "     " i2$
  590 w1 = w2(j) : print "{ensh}"; : gosub 5430
  600 if v2(j) > 0 then print "," v2(j) "cu in";
  610 if c1(j) > 0 then print ", price: $" c1(j)
  620 next j
  630 input "which one do you want (number)";a
  640 if a < 1 or a > 4 then print "come on now; answer 1, 2, 3, or 4" : goto 630
  650 it$(i) = i1$(a) : wt(i) = w2(a) : c2(i) = c1(a) : v1(i) = v2(a) : next i
  660 v3 = v1(1) + v1(5) + v1(7) : v4 = v1(3) + v1(4) : print
  670 if c2(2) > 135 then if v1(2) > 3000 + v3 then 720 :else 690
  680 if v1(2) > 3000 + v3 + v4 then 720 : rem internal pack hold stuff?
  690 print "your pack is too small to hold all"
  691 print "those things plus clothes and food."
  692 print "you'll have to take a larger pack or"
  693 print "some smaller items."
  710 print : print "let's try again... " : restore : goto 570
  720 print "how many changes of underwear do you"
  721 input "want to take";u
  730 if u > 6 then print "this is not a picnic.": print "take fewer." : goto 720
  740 print "do you want to take a walking stick"
  741 input "(y or n)";a$ : gosub 5540
  750 if a$ = "y" then sk = 1:else sk = 0
  760 print : print "to summarize, here is what you have chosen:"
  770 for i = 1 to 7 : print sp$(i) " : " it$(i) : next i
  780 print "changes of underwear:" u
  790 if sk = 1 then print "walking stick."
  791 gosub 5390
  800 print "{ensh}in addition, you must carry (or wear)"
  801 print "a hat, short-sleeve shirt, chamois"
  802 print "shirt, light jacket, long underwear,"
  803 print "hiking shorts, long pants, 3 pairs"
  810 print "socks, eating gear, water bottle, soap,"
  811 print "toilet tissue, toilet supplies, towel,"
  812 print "first-aid kit, snakebite kit,"
  813 print "flashlight, 100' nylon cord, watch,"
  820 print "compass, lighter, bandanna, sewing kit,"
  821 print "insect repellent, swiss army knife,"
  822 print "water-purifier tablets, notebook, maps,"
  860 print "guidebook, stuff sacks, moleskin,"
  861 print "camera, and money." : print
  870 for i = 1 to 7 : wp = wp + wt(i) : c1 = c1 + c2(i) : next i : rem summarize weights
  880 wp = wp + 190 + u * 4 : if sk = 1 then wp = wp + 24
  890 print "if you bought everything new, the total"
  891 print "cost would be $" 225 + c1
  900 print "the total weight of what you are"
  901 print "wearing and carrying is";
  910 w1 = wp : gosub 5430 : print : print ".... not including food or water."
  920 rem 
  930 rem data on food
  940 gosub 5390 : print : print "common systems of food supply include:"
  950 print " (1) caches buried along the trail."
  951 print "pros: no wasted time leaving the trail"
  952 print "for food, heavy items can be buried."
  970 print " (2) food sent to post offices along"
  971 print "the way. pros: more flexible than"
  972 print "caches. cons: p.o.s closed nights,"
  973 print "sat pm and sun."
  990 print " (3) grocery stores and restaurants."
  991 print "     pros: good variety, cheap."
 1000 print "{ensh}cons: wasted time leaving trail,"
 1001 print "     limited opening hours."
 1010 print "which will be your major method of"
 1011 input "food supply"; food
 1020 if fo < 1 or fo > 3 then print "sorry, try again." : goto 1010
 1030 if fo = 1 then rt = 1 :else rt = .95 : rem off-trail excursions reduce walking rate
 1040 rm = rt : gosub 5510 : rem short pause before screen clears
 1050 scnclr
 1060 print "obviously, you will carry your food in"
 1061 print "the most efficient form: dried,"
 1070 print "dehydrated, concentrated, etc. however,"
 1071 print "you must specify the percentage of your"
 1080 print "diet accounted for by each of the"
 1081 print "following food groups (remember, all"
 1090 print "five must add up to 100)."
 1100 print " (1) dairy foods, cheese, yogurt"
 1110 print " (2) fruits and vegetables"
 1120 print " (3) meat, poultry, fish, eggs"
 1130 print " (4) bread, cereal, seeds, nuts,"
 1140 print " (5) margarine, lard, oils, fats"
 1150 ct = 0 : for i = 1 to 5
 1151 print "{home}";:for j = 1 to i+6: print "{down}";:next j:for j = 1 to 32: print "{rght}";:next j
 1152 input fd(i) : ct = ct + fd(i) : next i
 1160 print "{home}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}";
 1161 for j = 1 to 30: print "{rght}";:next j: print ct "%" : print
 1170 if ct = 100 then print:print "very good." : goto 1220
 1180 print "sorry, but your percentages add up to"
 1181 print ct "rather than to 100%."
 1190 print : print "press any key"
 1200 getkey k$: goto 1050
 1210 rem 
 1220 rem calculate calorie usage
 1230 dm = rw * tw : if dm > 30 then dm = 30 : rem desired distance = rate * time
 1240 rem calories = metabolism + walking + climbing + camp activities
 1250 cd = int(wb * 11.5 + wb * dm * .3 + (wb + wp / 16) * dm * .21 + wb * (15 - tw) * .22)
 1260 print : print "given your weight and that of your"
 1261 print "supplies, your walking speed, and your"
 1270 print "walking time per day, you can expect to"
 1280 print "burn at least" cd "calories per day."
 1290 print : print "how many calories worth of food do you"
 1291 input "want to eat"; cl
 1300 if cl > .6 * cd then 1330
 1310 print "your body will rebel against burning"
 1311 print "that much body fat."
 1320 print "better eat a bit more... " : goto 1290
 1330 if cl > 1.5 * cd then print "no blimps allowed on the trail." : goto 1290
 1340 fwt=int(cl*3.2/(4 * fd(1)+3*fd(2)+4*fd(3)+4*fd(4)+9*fd(5))):w1 = fwt
 1350 print "that means eating an approx food weight"
 1351 print "per day of"; : gosub 5430
 1360 print : print : if fo = 3 then dy = 2 :else dy = 3 : rem avg days of food carried
 1370 wadd = dy * fwt + 17 : cadd = wadd * dm * .21 : wp = wp + wadd : cd = cd + cadd
 1380 print "food and water add" wadd "oz. to"
 1381 print "your trail weight bringing your"
 1390 print "total weight (worn and carried)"
 1391 print "to"; : w1 = wp : gosub 5430 : print
 1400 print : x$ = "preparations are finally complete!" : gosub 5590 : gosub 5510
 1410 rem 
 1420 rem main hiking section
 1430 rem initial calculations, data, and messages
 1440 wp = wp / 16 : gosub 1930 : rem calculate true hiking pace
 1450 print : print : gosub 5100 : rem read locations
 1460 print "{ensh}it is april 1 and you briskly step"
 1461 print "out on the approach trail at amicalola"
 1470 print "falls, georgia. you hike the 6.9 miles"
 1471 print "to the peak of springer mountain and"
 1480 print "sign the trail log, the first of many"
 1490 print "that you intend to sign. your hike will"
 1491 print "take you through 14 states as the trail"
 1500 print "wanders 2007 miles along the"
 1501 print "appalachian mountains to baxter peak on"
 1510 print "mt. katahdin in maine. it is a"
 1511 print "challenging trail with an average climb"
 1520 print "of 200 feet each mile. fewer than 2000"
 1521 print "people have walked its entire length."
 1530 print "good luck!"
 1540 print : gosub 5390
 1550 rem 
 1560 rem main loop starts here
 1570 t = t + 3 : td = int(t + .5) : print : gosub 5200 : rem check on the hiker every 3 days
 1580 dd = 3 * rm * di : d = d + dd : if d > 1999 then 4560
 1590 print "you have walked" int(d) "miles. "
 1600 for i = 1 to 21 : if d > dl(i) - 17 and d < dl(i) + 17 then 1620 : rem near anyplace?
 1610 next i : print : goto 1630
 1620 print "you are near "lc$(i)
 1630 if d > 1466 then r(10) = .85 : ts(10) = 2007 : rem slow going in mountains
 1640 gosub 1710 : rem any mishaps recently?
 1650 if t > 12 then gosub 4030 : rem long stretch of rain?
 1660 if d > 1545 and t > 166 then gosub 4260 : rem snow in new england
 1670 if d > 1845 and ken = 0 then gosub 4380 : rem kennebec river crossing
 1680 if d > (sv + 1) * 400 then gosub 1820 : rem allow user to reset input variables
 1690 gosub 5390 : goto 1570 : rem go back to start of hiking loop
 1700 rem
 1710 rem subroutine to determine which mishap, if any, occurs
 1720 tm = 0 : rn = int(1 + 40 * rnd(1)) : if rn > 35 then rn = 36 : rem mishap occurs
 1730 if rn > 12 then 1760
 1740 on rn gosub 2070, 2110, 2150, 2220, 2260, 2300, 2320, 2340, 2390, 2410, 2430, 2460
 1750 goto 1800
 1760 if rn > 24 then 1790
 1770 on (rn-12) gosub 2530, 2570, 2600, 2630, 2670, 2710, 2750, 2770, 2790, 2820, 2870, 2910
 1780 goto 1800
 1790 on (rn-24) gosub 2960, 2990, 3010, 3040, 3070, 3100, 3130, 3170, 3200, 3220, 3260, 3340
 1800 t = t + tm : gosub 2020 : return : rem time delay resulting from mishap
 1810 rem 
 1820 rem subroutine to let user reset input variables
 1830 sv = sv + 1 : print "want to change walking pace or hours of": input "walking"; a$
 1840 gosub 5540 : if a$< >"y "then 1910
 1850 input "new walking pace (mph)"; rw
 1860 if rw < 1 or rw > 4.5 then print "a rate of" rw "mph is silly." : goto 1850
 1870 input "new hours per day on the trail"; tw
 1880 if tw > 14 then print "come now; that's just too ambitious." : goto 1870
 1890 if sk = 1 then 1910 :else print "want to change your mind and carry a";
 1900 input "walking stick";a$ : gosub 5540 : if a$ = "y" then sk = 1
 1910 print : gosub 1930 : return
 1920 rem 
 1930 rem subroutine to establish true hiking pace
 1940 di = rw * tw : rem desired distance = walking rate * hours per day
 1950 if d > 600 then pc = 1 : rem under 600 miles physical condition limits mileage
 1960 dx = 6 + 6 * (5 - pc) : if di > dx then di = dx
 1970 if wb / wp > 6 then 1990 : rem body weight to pack weight ratio under 6?
 1980 di = (.49 + .086 * wb / wp) * di : rem heavy pack cuts down speed
 1990 if sv = 0 then return : rem no chance to change diet at the start
 2000 gosub 3820 : return : rem chance to change diet as trip progresses
 2010 rem 
 2020 rem subroutine to alter hiking rate due to mishaps
 2030 rm = rt : for i = 1 to 10 : if ts(i) > t then rm = rm * r(i)
 2040 next i : return
 2050 rem 
 2060 rem subroutines for 35 assorted mishaps follow
 2070 if d > 360 or hz(6) = 1 then return :else tm = .5 : hz(6) = 1
 2080 print "you run into rangers on military"
 2081 print "exercises who advise you to avoid the"
 2090 print "trail for the next few miles because"
 2091 print "of booby traps." : return
 2100 rem 
 2110 if d < 800 or hz(12) = 1 then return :else tm = 1 : hz(12) = 1
 2120 print "the back-support strap on your backpack"
 2121 print "has worn through. you'll have to find a"
 2030 print "shoemaker to sew on a piece of heavy"
 2031 print "leather." : return
 2140 rem 
 2150 if d - db < 500 then return :else if hz(15) = 1 then 2180 :else tm = 1 : hz(15) = 1
 2160 print "the soles of your boots have worn"
 2161 print "through. you'll have to get new soles"
 2170 print "at a shoemaker." : return
 2180 if d - db < 800 then return :else tm = 1.5 : db = d : hz(15) = 0
 2190 print "your repaired boot soles are going"
 2191 print "again. you'll have to buy a new pair of"
 2200 print "boots along the way." : return
 2210 rem 
 2220 if d - db < 700 then return :else if hz(24) = 1 then return :else tm = 1 : hz(24) = 1
 2230 print "the uppers on your boots are starting"
 2231 print "to separate from the soles. you'll have"
 2240 print "to get them repaired by shoemaker." : return
 2250 rem 
 2260 if d < 1000 or hz(23) = 1 then return :else tm = .4 : hz(23) = 1
 2270 print "the seat of your pants has worn"
 2271 print "through. you can take off the pockets"
 2280 print "and sew them over the holes." : return
 2290 rem 
 2300 tm = .3 : print "mice got into your food last night."
 2301 print "yuck." : return
 2310 rem 
 2320 tm = .3 : print "some boy scouts kept you awake 'til 1"
 2321 print "am last night." : return
 2330 rem 
 2340 if d > 900 then return :else tm = .1
 2350 print "curs attack you as you are walking"
 2351 print "through a small town."
 2360 if sk = 1 then print "you drive them off with your walking": print "stick." : return
 2370 print "they nip at your heels. you should"
 2371 print "really carry a stick." : return
 2380 rem 
 2390 tm = .3 : print "trail is poorly marked and you get"
 2391 print "temporarily lost." : return
 2400 rem 
 2410 tm = .2 : print "broken zipper on your pack. lose time"
 2411 print "drying stuff." : return
 2420 rem 
 2430 tm = .3 : print "route marked on map is out of date. you"
 2431 print "lose time trying to get back on the"
 2440 print "trail." : return
 2450 rem 
 2460 if hz(1) > 1 then return :else tm = 2 : hz(1) = hz(1) + 1 : d6 = 1
 2470 print "you forget to shake out your boot and a"
 2471 print "snake has curled up inside for the"
 2480 print "night. you're scared and he's mad." : gosub 5510
 2490 if rnd(1) < .9 then print "he slithers away and all is okay. whew!" : return
 2500 print "it's a rattler and he bites you. you'll"
 2501 print "have to get a doctor."
 2510 goto 3360
 2520 rem 
 2530 if d > 165 or hz(7) = 1 then return :else hz(7) = 1 : rn = int(1 + 4 * rnd(1)) : tm = rn
 2540 print "late snow in the smokies. the trail is"
 2541 print "unpassable for" rn "days."
 2550 return
 2560 rem 
 2570 if hz(8) > 3 then return :else hz(8) = hz(8) + 1 : r(1) = .9 : ts(1) = t + 14
 2580 print "you have some nasty blisters that will"
 2481 print "slow your pace." : return
 2590 rem 
 2600 if hz(9) > 2 then return :else hz(9) = hz(9) + 1 : r(2) = .7 : ts(2) = t + 3
 2610 print "you have bad indigestion from an"
 2611 print "unbalanced diet." : return
 2620 rem 
 2630 if d > 870 or hz(10) = 1 then return :else hz(10) = 1 : tm = .5
 2640 print "a bear got into your food and ripped"
 2641 print "your pack last night. it's a good"
 2650 print "thing he wasn't hungry for human"
 2651 print "burgers." : return
 2660 rem 
 2670 if hz(11) > 1 then return :else hz(11) = hz(11) + 1 : r(3) = .75 : ts(3) = t + 6
 2680 print "you twisted your ankle crossing a"
 2681 print "stream. that will slow your pace"
 2690 print "for a few days. be more careful!" : return
 2700 rem 
 2710 if hz(2) = 1 then return :else hz(2) = 1 : d6 = 2
 2720 print "you slipped on some rocks on a ledge."
 2721 print "it's incredibly painful!"
 2730 print "better see a doctor." : goto 3360
 2740 rem 
 2750 tm = .3 : print "a branch snaps in your eye. lose time"
 2751 print "to treat it." : return
 2760 rem 
 2770 tm = .3 : print "bad case of constipation. better change"
 2771 print "diet." : return
 2780 rem 
 2790 tm = .5 : print "you fell in a stream and everything got"
 2791 print "wet. lose time drying out your sleeping"
 2800 print "bag and clothes." : return
 2810 rem 
 2820 if hz(13) = 1 then return :else hz(13) = 1 : tm = 1.5
 2830 print "last night you saw an animal moving"
 2831 print "near you and swatted at it."
 2840 gosub 5510 : print "big mistake! it was a skunk. you'll"
 2850 print "have to wash what you can and replace"
 2851 print "the rest." : return
 2860 rem 
 2870 if hz(14) = 1 then return :else hz(14) = 1 : tm = 2
 2880 print "lowliest of the low! someone stole your"
 2881 print "pack while you were taking a shower."
 2890 print "you'll have to replace everything." : return
 2900 rem 
 2910 if hz(3) = 1 then return :else hz(3) = 1 : tm = 3 : d6 = 3
 2920 print "after five solid days of rain,"
 2921 print "everything is soaked and you just can't"
 2930 print "stop shivering. you feel so terrible"
 2931 print "that you'll have to see a doctor." : goto 3360
 2950 rem 
 2960 if hz(16) = 1 then return :else hz(16) = 1 : tm = .4
 2970 print "you cut your hand badly with your"
 2971 print "knife. be careful!" : return
 2980 rem 
 2990 tm = .3 : print "socks worn through. you'll have to buy"
 2991 print "new ones." : return
 3000 rem 
 3010 if hz(17) = 1 then return :else hz(17) = 1 : tm = 1
 3020 print "bad toothache. you'll have to find a"
 3021 print "dentist soon." : return
 3030 rem 
 3040 if hz(18) = 2 or wt(1) = 0 then return :else hz(18) = hz(18) + 1 : tm = .5
 3050 print "tent ripped. you'll have to sew on a"
 3051 print "patch." : return
 3060 rem 
 3070 if d < 1000 or hz(19) = 1 then return :else hz(19) = 1 : tm = .3
 3080 print "your groundcloth is in shreds. must buy"
 3081 print "a new one." : return
 3090 rem 
 3100 if d < 500 or hz(20) = 1 or wt(7) = 0 then return :else hz(20) = 1 : tm = .4
 3110 print "bad rip in raingear. must get a"
 3111 print "replacement." : return
 3120 rem 
 3130 if d < 600 or hz(21) = 1 or sk = 0 then return :else hz(21) = 1 : r(4) = .9 : tm = .4
 3140 print "your walking stick breaks. you can get"
 3141 print "a new one in the next town. maybe they"
 3150 print "make 'em better up here." : ts(4) = t + 4 : return
 3160 rem 
 3170 if hz(22) = 1 then return :else hz(22) = 1 : tm = .4
 3180 print "your water bag springs a leak. better"
 3181 print "get a new one soon!" : return
 3190 rem 
 3200 tm = .2 : print "you run out of toilet tissue. yucko!" : return
 3210 rem 
 3220 print "you run out of water and the springs"
 3221 print "marked on the map seem to have vanished"
 3230 print "or dried up. better take it easy for a"
 3231 print "bit."
 3240 hz(5) = 1 : r(5) = .9 : ts(5) = t + 3 : return
 3250 rem 
 3260 if hz(4) = 3 then return :else hz(4) = hz(4) + 1 : d6 = 4
 3270 print "oh oh, you stumble into a thicket of"
 3271 print "poison ivy. zowie!"
 3280 if ivy = 1 or (ivy = 2 and rnd(1) > .5) then 3290 :else 3300
 3290 print "you got it really bad. you'll have to"
 3291 print "see a doctor." : goto 3360
 3300 print "like it or not, you got a mild case. it"
 3301 print "itches like crazy but the calamine"
 3310 print "seems to have it under control. it"
 3311 print "slows you down tho'."
 3320 r(6) = .9 : ts(6) = t + 7 : tm = .4 : return
 3330 rem 
 3340 print "walking.. walking.. walking.. walking." : return
 3350 rem 
 3360 rem subroutine to deal with serious injuries and illnesses
 3370 print : print "you're feeling horrible, but you found"
 3371 print "a nice country doctor."
 3380 on d6 goto 3410, 3480, 3570, 3640, 3700
 3390 rem 
 3400 rem rattlesnake bite
 3410 print "he examines your swollen leg and says," : gosub 5510
 3420 print "'good thing you got here so quickly."
 3421 print "i'll give you a shot of anti-venom but"
 3430 print "you're going to be out of commission"
 3431 print "for a good 4 days - and even after"
 3440 print "that you'll have to take it easy for a"
 3441 print "while.'"
 3450 tm = 4 : r(7) = .7 : ts(7) = t + 15 : return
 3460 rem 
 3470 rem broken or sprained leg
 3480 print "he examines your leg and says," : gosub 5510 : if rnd(1) > .7 then 3520
 3490 print "'that's a very nasty sprain. i'll tape"
 3491 print "it up, but you'll have to take it easy"
 3500 print "for at least a month.'"
 3510 tm = 1.5 : r(8) = .6 : ts(8) = t + 30 : return
 3520 print "'bad news, my young friend. your leg is"
 3521 print "broken. i'm surprised you got here"
 3530 print "under your own power. but this is the"
 3531 print "end of your hike."
 3540 print "sorry, but maybe you can try again next"
 3541 print "year.'" : goto 4610
 3550 rem 
 3560 rem hypothermia
 3570 print "he examines you and says," : gosub 5510 : tm = int(5 + 6 * rnd(1))
 3580 print "'that prolonged rain and cold has put"
 3581 print "you in a condition that we call"
 3590 print "hypothermia. you can stay in town here"
 3591 print "at a motel and i'll keep an eye on you,"
 3600 print "but you can't go back on the trail for"
 3610 print "at least" tm "days. sorry, but"
 3611 print "that's the way it is.'" : return
 3620 rem 
 3630 rem poison ivy
 3640 print "he only needs a glance to see that you"
 3641 print "are suffering from an extremely bad"
 3650 print "case of poison ivy. he puts you in a"
 3660 print "clinic for a few days and tells you"
 3661 print "what you already knew - that you'll"
 3670 print "just have to let it run its course." : tm = 5 : return
 3680 rem 
 3690 rem excessive weight loss
 3700 print "he examines you and says," : gosub 5510 : if w3 > .33 * wb then 3770
 3710 print "'you may want to lose some weight, but"
 3711 print "it's coming off far too quickly. your"
 3720 print "body just can't cope. i'm going to"
 3730 print "keep you here for a week on a"
 3731 print "controlled diet - and then for the rest"
 3740 print "of the trip you'll have to go at a"
 3741 print "slower pace. also, i want you to"
 3750 print "consume at least as many calories per"
 3751 print "day as your body is using up.'"
 3760 wb = 1.18 * wb : tm = 7 : r(9) = .8 : ts(9) = t + 30 : return
 3770 print "'believe it or not, you are in an"
 3771 print "advanced stage of starvation. you're"
 3780 print "going to have to remain here for a few"
 3781 print "weeks on a controlled diet to"
 3790 print "stabilize your body chemistry. and"
 3791 print "then you will go home - yes, home, and"
 2800 print "not back to the trail this year.'" : goto 4610
 3810 rem 
 3820 rem subroutine to examine weight loss
 3830 cf = cd - 1.03 * cl : rem augment diet by 3% with ice cream, etc.
 3840 ts = t - tl : tl = t : rem time (in days) of this trip segment
 3850 w4 = cf * ts / 3500 : w3 = w3 + w4 : if w4 < 1 then return
 3860 print "since the start of the trip, you have"
 3861 print "lost" int(w3) "pounds."
 3870 if w3 > .07 * wb then 3900 : rem lost more than 7% of orig body weight?
 3880 print "right now you are feeling fit as a"
 3881 print "fiddle, but remember, you still have"
 3890 print "a long way to go." : goto 3970
 3900 if w3 > 15 * wb then 3930 : rem lost more than 15% of orig body weight?
 3910 print "you occasionally feel a bit lightheaded"
 3911 print "and shaky. you really should eat a bit"
 3920 print "more." : goto 3970
 3930 print "that's far too much weight to lose in"
 3931 print "this short period of time."
 3940 if w3 > .24 * wb then hz(5) = 1 : d6 = 5 : gosub 3360 : goto 3970
 3950 print "you frequently feel lightheaded,"
 3951 print "nauseated, and sluggish. you'd"
 3960 print "better add to your diet... and soon!"
 3970 wb = wb.w4 : cd = int(wb * 11.5 + wb * di * .3 + (wb + wp) * di * .21 + wb * (15 - tw) * .22)
 3980 print "at your current pace, you are"
 3981 print "burning" cd "calories per day."
 3990 print : print "how many calories worth of food do you"
 2991 input "want to eat";cl
 4000 if cd - cl > 400 then print "okay, suit yourself."
 4010 return
 4020 rem 
 4030 rem subroutine to deal with a long period of rain
 4040 if rnd(1) < .94 then hz(5) = 0 : return : rem 6% chance of heavy rain
 4050 if hz(5) = 1 then hz(5) = 0 : return : rem in a dry stretch?
 4060 hz(25) = hz(25) + 1 : tm = ra * 1.7 : if hz(25) > 4 then hz(25) = 4
 4070 on hz(25) goto 4080, 4130, 4150, 4180
 4080 print "it has been raining steadily for the"
 4081 print "past week and you are thoroughly"
 4090 print "soaked - your clothes, your sleeping"
 4091 print "bag, your food, and, yes, your spirits."
 4100 print "what a bummer." : gosub 5510
 4110 print "if it continues for another week,"
 4111 print "you're going to have fungus growing on"
 4120 print "your skin." : return
 4130 print "good grief! more rain - torrential,"
 4131 print "blustery, miserable rain. this is"
 4140 print "really beginning to get you down." : return
 4150 print "would you believe it? it is raining"
 4151 print "again. not the pitter-patter of the"
 4160 print "songwriters, but steady, heavy, cold"
 4161 print "rain." : gosub 5510
 4170 print "... and more rain. won't it ever stop?" : return
 4180 print "unbelievable... it is raining again..."
 4181 print "and has been for the past week."
 4190 if (ra = 2 or ra = 3) and d < 1900 then 4230 :else return
 4200 if ra = 4 then print "okay, you resign yourself to wait it": print "out." : return
 4210 print "even your cheerful attitude toward rain"
 4211 print "is taking a beating, but you keep"
 4220 print "slogging along, hoping for a letup." : return
 4230 gosub 5510 : print : print "that's it. you can't take any more.": print "maybe"
 4240 print "you'll try again next year, but that's"
 4241 print "it for now." : goto 4610
 4250 rem 
 4260 rem subroutine to deal with snow in new england
 4270 if t > 200 and rnd(1) > .5 then 4290 : rem 50% chance of snow after oct 15
 4280 if rnd(1) > .2 then return : rem 20% chance of snow
 4290 sno = sno + 1 : print "oh oh, new england is getting some snow"
 4300 if sno = 1 then print "but you keep pushing on." : return
 4310 if sno > 2 then 4350 : rem 3 heavy snowfalls and you're out
 4320 print "you pushed through the last flurries"
 4321 print "but this looks more serious. you say to"
 4330 print "yourself, 'i've gone this far, i'm"
 4340 print "going to go all the way.' and on you"
 4341 print "go..." : return
 4350 print "you made a gallant attempt to get"
 4351 print "through, but the park rangers won't let"
 4360 print "you go on. too bad." : goto 4610
 4370 rem 
 4380 rem subroutine to deal with the kennebec river
 4390 ken = 1 : print : print "you have arrived at the kennebec river."
 4400 print "did you make prior arrangements to get"
 4401 input "across";a$ : gosub 5540
 4410 if a$< >"y" then 4450 :else rn = rnd(1) : if rn > .5 then 4440
 4420 print "fortunately the person you called"
 4421 print "showed up to meet you with a canoe. you"
 4430 print "get across in jig time." : tm = .5 : goto 4540
 4440 gosub 5510 : print "too bad; the guy you called didn't show": print "up." : goto 4460
 4450 print "that wasn't very sensible. what will"
 4451 print "you do now?" : gosub 5510
 4460 if rnd(1) > .7 then 4520 : rem 30% chance you can ford the river
 4470 print "the river is running very high and the"
 4471 print "logs from the sawmill are very"
 4480 print "dangerous. you'll have to hang around"
 4481 print "until another hiker (who, hopefully,"
 4490 print "has arranged for a canoe) shows up or"
 4491 print "hope that someone comes along."
 4500 gosub 5510 : tm = int(2 + 3 * rnd(1))
 4510 print "finally... you're across, but it"
 4511 print "cost you" tm "days." : goto 4540
 4520 print "fortunately the river isn't running too"
 4521 print "high and you can probably wade across"
 4530 print "downstream at the ford. boy, were you"
 4531 print "lucky!" : tm = .6
 4540 t = t + tm : return
 4550 rem 
 4560 rem reached end of trail!
 4570 print "you reached the end of the trail at"
 4571 print "baxter peak on mt. katahdin!"
 4580 for j = 1 to 3 : gosub 5510 : next j : scnclr : for j = 1 to 10
 4590 sound 1,516,30 : x$ = "congratulations!" : print "{home}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}{down}": gosub 5590
 4600 for i = 1 to 100 : next i : scnclr : for i = 1 to 50 : next i : next j : d = 2007
 4610 td = int(t + .5) : d = int(d) : x = (int(.5 + 10 * d / td)) / 10 : rem end game statistics
 4620 print : print "it is now "; : gosub 5220 : print:print "and you have been on the"
 4630 print "trail for" td "days. you have"
 4631 print "covered" d "miles. your average"
 4640 print "speed, considering all the delays, was ";
 4650 print using "##.#";x; : print " miles per day."
 4660 wb = int(wb + .5) : wl = int(w3 + .5) : if wl > 0 then x$ = "less" : goto 4680
 4670 x$ = "more" : wl = -wl
 4680 print "you weighed" wb "pounds at the"
 4681 print "end," wl x$ " than at the start."
 4690 print "nice going!"
 4700 print : input "would you like to try again (y or n)"; a$ : gosub 5540
 4710 if a$ = "y" then run :else scnclr : end
 4720 rem 
 4730 rem names of items that can be carried
 4740 data "tent"
 4750 data "sierra designs divine light" , "20 sq ft, max height 34 in.", 35, 135, 214
 4760 data "eureka! crescent bike"       ,"22 sq ft, height 43 in.", 48, 125, 353
 4770 data "moss starlet, 29 sq ft; with","vestibule, 37; height 39 in.", 78, 250, 334
 4780 data "none. use trail shelters and","sleep in open.", 0, 0, 0
 4790 data "pack"
 4800 data "kelty mountaineer external -","frame with seneca pack", 69, 139, 3975
 4810 data "jansport d2 external -"      , "frame pack", 99, 169, 5520
 4820 data "camp trails grey wolf intern", "frame pack, large", 82, 119, 5975
 4830 data "coleman peak 1 model 680"    , "frame pack", 58, 115, 4013
 4840 data "sleeping bag"
 4850 data "north face blue kazoo, mummy", "goose down, rated 25 deg", 34, 140, 452
 4860 data "slumberjack bike lite, mummy", "quallofil, rated 30 deg", 50, 65, 808
 4870 data "rei 747 wide body, semi-rect", "quallofil, rated 30 deg", 54, 90, 1884
 4880 data "l.l. bean ultra - lite"      , "quallofil, rated 35 deg", 58, 80, 804
 4890 data "sleeping pad/mattress"
 4900 data "sevylor superlight air","mattress", 32, 20, 360
 4910 data "therm-a-rest self"     , "inflating ultra-lite pad", 28, 48, 325
 4920 data "ensolite 1/2 in. pad"  ,"", 24, 23, 300
 4930 data "none.","", 0, 0, 0
 4940 data "stove"
 4950 data "msr whisperlite, uses white","gas (available along trail)", 18, 37, 120
 4960 data "gaz bleuet, fuel: butane"   ,"cartridge (light and reliable)", 16, 20, 106
 4970 data "primus grasshopper, fuel:"  ,"propane cylinder (long life)", 22, 19, 90
 4980 data "none (incidentally, wood"   ,"fires are prohibited)", 0, 0, 0
 4990 data "boots"
 5000 data "asolo trail ii s, mid-ankle" ,"leather boots", 49, 140, 0
 5010 data "danner featherlight trail"   ,"mid-ankle leather & gore-tex boot", 52, 95, 0
 5020 data "timberland lightweight hiker", "mid-ankle fabric and gore-tex", 46, 50, 0
 5030 data "raichle montagnas, full-"    ,"height leather boots", 80, 125, 0
 5040 data "raingear"
 5050 data "early winters ultralight","gore-tex rain parka", 13, 145, 25
 5060 data "patagonia featherweight" ,"gore-tex shell", 7, 58, 15
 5070 data "campmor nylon poncho"    , "",16, 25, 22
 5080 data "none.", "",0, 0, 0
 5090 rem 
 5100 for i = 1 to 21 : read dl(i), lc$(i) : next i : return
 5110 data 79, "bly gap, ga", 165, "doe knob, nc", 302, "big bald mt., nc"
 5120 data 384, "wilbur lake, tn", 483, "big walker lookout, va", 602, "tinker mt., va"
 5130 data 698, "salt log gap, va", 800, "fishers gap, va", 889, "potomac river, wv"
 5140 data 966, "piney mt., pa", 1099, "baer rocks, pa", 1190, "high point, nc"
 5150 data 1272, "shenandoah mt., ny", 1361, "sages ravine, ct", 1435
 5160 data "mt. greylock, ma", 1554, "killington, vt", 1687, "mt. washington, nh"
 5170 data 1776, "bemis pond, me", 1855, "kennebec river, me", 1922
 5180 data "chairback mt., me", 1992, "penobscot west branch, me"
 5190 rem 
 5200 rem subroutine to print the date
 5210 if tt = td then return : rem printed this date already?
 5220 if td < 31 then 5250 :else if td < 62 then 5260 :else if td < 90 then 5270
 5230 if td < 121 then 5280 :else if td < 152 then 5290 :else if td < 182 then 5300
 5240 if td < 213 then 5310 :else if td < 225 then 5320 :else goto 5340
 5250 mo$ = "april" : md = td : goto 5330
 5260 mo$ = "may" : md = td - 30 : goto 5330
 5270 mo$ = "june" : md = td - 61 : goto 5330
 5280 mo$ = "july" : md = td - 89 : goto 5330
 5290 mo$ = "august" : md = td - 120 : goto 5330
 5300 mo$ = "september" : md = td - 151 : goto 5330
 5310 mo$ = "october" : md = td - 181 : goto 5330
 5320 mo$ = "november" : md = td - 212
 5330 print mo$; md; : tt = td : return
 5340 print : print "it's november 12 and all the new"
 5341 print "england states are covered with snow."
 5350 print "you have no chance of finishing the"
 5351 print "trail. better luck next year. you have"
 5360 print "been out on the"
 5370 td=int(t+.5):d=int(d):x=(int(.5+10*d/td))/10:goto 4630
 5390 print: x$="press any key":gosub 5590
 5410 getkey k$:print:return
 5420 rem 
 5430 rem subroutine to print weights by pounds and ounces
 5440 w7=int(w1/16):w8=w1-16*w7
 5450 if w7 > 1 then print w7 "lbs"; : goto 5470
 5460 if w7 = 1 then print " 1 lb";
 5470 if w8>1 then print w8 "oz";:return
 5480 if w8=1 then print " 1 oz";
 5490 return
 5500 rem 
 5510 rem subroutine to make a short pause
 5520 for i = 1 to 900 : next i : return
 5530 rem
 5540 rem subroutine to extract the first letter of an input answer
 5550 if a$="" then a$="y":return
 5560 a$=left$(a$, 1):return
 5580 rem 
 5590 rem subroutine to print centered lines
 5600 print tab((40-len(x$))/2);x$;:return
 5610 rem 
 5620 rem subroutine to print the instructions
 5630 x$ = "appalachian trail" : gosub 5590 : print : print
 5640 print "  you are a hiker whose goal is to walk"
 5641 print "the entire 2007 miles of the "
 5650 print "appalachian trail from springer mt.,"
 5651 print "ga, to mt. katahdin, maine. you set out"
 5660 print "in april as soon as the smokies are"
 5661 print "clear of snow, and you must reach the"
 5670 print "northern terminus before it is blocked"
 5671 print "by snow."
 5680 print "  your hike is divided into three-day"
 5681 print "segments. along the way, you encounter"
 5690 print "natural hazards, difficulties with your"
 5691 print "equipment, and physical problems."
 5710 print "  careful planning for your hike is"
 5711 print "very important. in deciding what to"
 5720 print "pack, you have to make trade-offs -"
 5721 print "generally between weight and comfort."
 5730 print "of course, everything must fit in your"
 5731 print "pack."
 5732 print:x$ = "press any key" : gosub 5590: print
 5733 getkey k$
 5740 print "  you must decide how you will obtain"
 5741 print "food along the route, how much to eat"
 5750 print "in each food group, and how many"
 5751 print "calories to replenish."
 5760 print "  you must decide at what pace you will"
 5761 print "walk, and how long to hike each day. of"
 5770 print "course, a faster pace will cover"
 5771 print "mileage more quickly than a slower one,"
 5780 print "but it is much harder on your body."
 5790 print "  you don't have many choices when"
 5791 print "dealing with mishaps. it is assumed"
 5800 print "that you are a sensible hiker, make"
 5801 print "repairs when necessary, replace things"
 5810 print "that wear out, and see a doctor if you"
 5811 print "get sick. nevertheless, mishaps cost"
 5820 print "you time, of which you have little to"
 5830 print "spare as you take another of the five"
 5831 print "million steps towards maine."
 5840 print:x$ = "press any key when you're ready to go." : gosub 5590: print
 5841 getkey k$
 5842 return
