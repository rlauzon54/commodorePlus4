   10 color 0,1: color 4,1: color 1,2: x=rnd(0)
   20 rem weather "forecaster"
   30 rem by ron lauzon 2022
   40 input "what month is it";mo
   50 scnclr
  190 print "weekly forecast:"
  200 for i = 1 to 7
  210 print "day";i;" - ";tab(14);
  220 gosub 460
  250 next i
  260 end
  450 rem display forecast
  460 x=int(rnd(1)*21)+1
  470 on x goto 480, 490, 500, 510, 520, 540, 560, 570, 580, 590, 610, 630, 650, 670, 690, 710, 720, 740, 750, 770, 790
  480 print "clear": return
  490 print "partly clear": return
  500 print "mostly clear": return
  510 print "mostly cloudy": return
  520 if mo > 10 or mo < 4 then print "snowy": return
  530 goto 460
  540 if mo > 4 and mo < 11 then print "rainy": return
  550 goto 460
  560 print "windy": return
  570 print "partly cloudy": return
  580 print "cloudy": return
  590 if mo > 4 and mo < 11 then print "foggy": return
  600 goto 460
  610 if mo > 10 or mo < 4 then print "blizzard": return
  620 goto 460
  630 if mo > 2 and mo < 10 then print "thunderstorms": return
  640 goto 460
  650 if mo > 5 and mo < 9 then print "hot and humid": return
  660 goto 460
  670 if mo > 10 or mo < 4 then print "frigid": return
  680 goto 460
  690 if mo=9 or mo=10 or mo=11 or mo=3 or mo=4 or mo=5 then print "cold and wet": return
  700 goto 460
  710 print "pleasant": return
  720 if mo>2 and mo < 11 then print "warm and sunny": return
  730 goto 460
  740 print "sunny": return
  750 if mo > 5 and mo < 10 then print "beach weather!": return
  760 goto 460
  770 if mo=3 or mo=4 or mo=5 or mo=9 or mo=10 or mo=11 then print "blustery": return
  780 goto 460
  790 if mo=1 or mo=2 or mo=12 then print "break out the snowshoes!": return
  800 goto 460
