    0 clr
    1 rem boswain copyright (c) 1980 cursor magazine
    2 rem author: c.t. nadovich
    3 rem         24 second ave.
    4 rem         troy, ny 12180
    5 :
    6 rem cursor #21, june/july 1980
    7 rem box 550, goleta, ca. 93017
    8 :
   10 rem as of 1aug80
   11 color 0,1:color 1,2:color 4,1
   90 pg$="boswain":nm$="21":gosub 62000
  100 l1=0:dy=0:dx=1:sc=0:lh$="*":rh$=" "
  170 dl=2:gosub 6000:nh=1:gosub 11200:gosub 1000:dl=.5:gosub 6000
  200 dl=.5:gosub 6000:hs=0:gosub 2000
  210 if pp=0 then rh$="*":lh$=" "
  215 if pp=1 then rh$=" ":lh$="*"
  220 gosub 4000:poke ql,12:print"{up}":print tab(29)"guess!":gosub 6500
  250 if q$<>chr$(157) and q$<>chr$(29) then gosub 1700:goto 200
  270 lp=0:if q$=chr$(29) then lp=1
  280 if lp=pp then sc=sc-1
  290 if lp<>pp then sc=sc+1
  300 hs=1:if q$=chr$(157) then hs=2
  320 gosub 2000:gosub 7000
  330 if hs<>5 then hs=3:gosub 2000:dl=1:gosub 6000:hs=5:gosub 2000:gosub 4000
  340 if sc=10goto 600
  350 if sc=-10goto 400
  360 gosub 11200:goto 200
  400 restore
  410 readq$:if q$<>"*" then 410
  430 gosub 5000:dl=2:gosub 6000
  440 gosub 4900:gosub 13000
  450 dl=5:gosub 6000:print"{clr}{down}{down}":end
  600 rh$=" ":lh$=" ":hs=3:gosub 2000
  620 q$="you have won!":y=14:gosub 5100
  630 q$="you are free!":y=12:gosub 5100
  640 print"{home}":end
 1000 print"{clr}{down}      oh my!!  you seem to have fallen"
 1060 print"{down} through a trap door.   when your head"
 1070 print"{down} stops spinning,{$a0}your new surroundings"
 1075 print"{down} come into focus."
 1080 print"{down}      above you is a  vast domed ivory"
 1090 print"{down} ceiling, traced with crimson streaks."
 1100 print"{down} at its peak is a round black opening,"
 1110 print"{down} presumably  through  which  you fell."
 1120 print"{down} your feet tell you  that  the{$a0} floor,"
 1130 print"{down} hidden  by {$a0}waist high mist, {$a0}is soft"
 1140 print"{down} and resilient."
 1160 gosub 6400
 1170 print"{clr}{down}{down}{down}{down}{down}{down}{down}      as you begin to  make{$a0} your  way"
 1180 print"{down} toward the arched walls, a noise from"
 1190 print"{down} behind startles you. you spin to face"
 1200 print"{down} the inhabitant of this erie place,  a"
 1210 print"{down} mysterious hooded figure."
 1230 gosub 6400
 1240 print"{clr}":gosub 9000:hs=5:gosub 2000
 1241 restore:fori=1to3
 1243 gosub 4900:if i<3 then dl=2:gosub 6000
 1245 nexti:gosub 6500:if q$="n" then 1600
 1255 gosub 4900:dl=2:gosub 6000:gosub 4000:hs=3:gosub 2000:gosub 5000
 1290 dl=.5:gosub 6000:hs=0:gosub 2000:dl=1.5:gosub 6000:gosub 4900
 1310 dl=2:gosub 6000:gosub 1700:y=16:goto 1610
 1600 gosub 4000:y=16:q$="good!":gosub 5100:y=y-3
 1610 q$="let us":gosub 5100:y=y-2:q$="begin!":gosub 5100:dl=3:gosub 6000
 1640 gosub 4000:return
 1700 print"{clr}{down}{down}{down}{down}{down}{down}{down}     {rvon}note from omniscient narrator{rvof}"
 1710 print"{down}{down}      you may indicate boswain's hands"
 1720 print"{down} by using the right and left arrow keys"
 1740 gosub 6400
 1750 gosub 9000:hs=5:gosub 2000
 1760 return
 2000 if hs=5 then gosub 8000:cf=0:return
 2010 if cf=0 then gosub 8500:cf=1
 2020 on hs goto 2150,2200,2250
 2100 gosub 3200:gosub 3250:return
 2150 gosub 3200:gosub 3150:return
 2200 gosub 3100:gosub 3250:return
 2250 gosub 3100:gosub 3150:return
 3100 poke ql,17:print"{up}":print"{rght}{rght}";
 3101 print"   {rvon}   {rvof} {down}{left}{left}{left}{left}{left}{left}{left}";
 3102 print"  {rvon}{SHIFT-POUND}   {rvof} {down}{left}{left}{left}{left}{left}{left}{left}";
 3103 print" {rvon}{SHIFT-POUND}  "lh$" {rvof} {down}{left}{left}{left}{left}{left}{left}{left}";
 3104 print"{rvon}{SHIFT-POUND}{rvof}{SHIFT-POUND}{rvon}{CBM-H}   {rvof} {down}{left}{left}{left}{left}{left}{left}{left}";
 3105 print"  {rvon}{CBM-H}{CBM-H}{CBM-H}{CBM-H}{rvof} {down}{left}{left}{left}{left}{left}{left}{left}";
 3106 print"  {rvon}{CBM-H}{CBM-H}{CBM-H}{CBM-H}{rvof} {down}{left}{left}{left}{left}{left}{left}{left}";
 3107 print"  {rvon}{CBM-H}{CBM-H}{CBM-H}{CBM-H}{rvof} {down}{left}{left}{left}{left}{left}{left}{left}";
 3110 return
 3150 poke ql,17:print"{up}":print tab(18);
 3151 print" {rvon}   {rvof}   {down}{left}{left}{left}{left}{left}{left}{left}";
 3152 print" {rvon}   {CBM-*}{rvof}  {down}{left}{left}{left}{left}{left}{left}{left}";
 3153 print" {rvon} "rh$"  {CBM-*}{rvof} {down}{left}{left}{left}{left}{left}{left}{left}";
 3154 print" {rvon}   {CBM-N}{rvof}{CBM-*}{rvon}{CBM-*}{rvof}{down}{left}{left}{left}{left}{left}{left}{left}";
 3155 print" {rvon}{CBM-N}{CBM-N}{CBM-N}{CBM-N}{rvof}  {down}{left}{left}{left}{left}{left}{left}{left}";
 3156 print" {rvon}{CBM-N}{CBM-N}{CBM-N}{CBM-N}{rvof}  {down}{left}{left}{left}{left}{left}{left}{left}";
 3157 print" {rvon}{CBM-N}{CBM-N}{CBM-N}{CBM-N}{rvof}  {left}{left}{left}{left}{left}{left}{left}";
 3160 return
 3200 poke ql,23:print"{up}":print"{rght}{rght}{rght}{rght}";
 3201 print"       {left}{left}{left}{left}{left}{left}{left}{up}";
 3202 print"       {left}{left}{left}{left}{left}{left}{left}{left}{left}{up}";
 3203 print"   {rvon}{CBM-N}{CBM-N}{CBM-M}{CBM-G}{rvof} {up}{left}{left}{left}{left}{left}{left}{left}{left}";
 3204 print"  {rvon}{CBM-M}uuuu{rvof} {up}{left}{left}{left}{left}{left}{left}{left}{left}";
 3205 print"  {rvon}{CBM-M}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{rvof} {up}{left}{left}{left}{left}{left}{left}{left}{left}";
 3206 print"  {rvon}{SHIFT-POUND}   {CBM-*}{rvof} {up}{left}{left}{left}{left}{left}{left}";
 3207 print" {rvon}   {rvof}"
 3210 return
 3250 poke ql,23:print"{up}":print tab(18);
 3251 print"       {left}{left}{left}{left}{left}{left}{left}{up}";
 3252 print"       {left}{left}{left}{left}{left}{left}{left}{up}";
 3253 print"{rvon}{CBM-M}{CBM-G}{CBM-H}{CBM-H}{rvof}    {up}{left}{left}{left}{left}{left}{left}{left}{left}";
 3254 print"{rvon}uuuu{CBM-G}{rvof}   {up}{left}{left}{left}{left}{left}{left}{left}{left}";
 3255 print"{rvon}{CBM-@}{CBM-@}{CBM-@}{CBM-@}{CBM-G}{rvof}   {up}{left}{left}{left}{left}{left}{left}{left}{left}";
 3256 print"{rvon}{SHIFT-POUND}   {CBM-*}{rvof} {up}{left}{left}{left}{left}{left}{left}";
 3257 print" {rvon}   {rvof}"
 3260 return
 4000 print"{home}";:forlj=1to24:print tab(25)"              ":next:return
 4900 gosub 4000
 5000 y=16
 5020 read q$:if q$<>"." then gosub 5100:y=y-2:goto 5020
 5040 return
 5100 x=32-int(len(q$)/2)
 5200 ln=len(q$):lx=x:ly=y
 5210 forl=1 to ln:poke ql,25-y:print"{up}";
 5250 print tab(lx)"*{left}{rvon}*{rvof}{left}";mid$(q$,l,1)
 5270 lx=lx+1:next l
 5290 return
 5510 data"i am","boswain!",.
 5520 data"you are now","a captive","of the temple","yakban",.
 5540 data"need i","enlighten"
 5550 data"you about the","terms of your","release?",.
 5570 data"to depart","you must"
 5580 data"pay a tribute","of ten rubies",.
 5590 data"in one hand","i will hide","a gem",.
 5600 data"you must","guess which","hand holds","it",.
 5610 data=,"ha!!","you have","guessed wrong",.
 5620 data"since you have","no jewels",.
 5630 data"you must pay","in flesh!",.
 5640 data"a finger","is fair","exchange",.
 5700 data*,"will you","honor","your debt,",.
 5710 data"or must","i use","force?",.
 6000 x=ti+60*dl
 6020 if ti<x goto 6020
 6030 return
 6400 poke ql,24:print"{up}";tab(25);"{rvon}press key..."
 6500 get q$:if q$<>""goto 6500
 6510 get q$:if q$=""goto 6510
 6520 return
 7000 gosub 4000
 7100 if l1=1 or sc<>-1goto 7300
 7110 l1=1:restore
 7120 read q$:if q$<>"=" then 7120
 7125 for i=1 to 4
 7130 gosub 5000
 7135 if i=1 then hs=3:gosub 2000
 7140 dl=2:gosub 6000
 7145 gosub 4000
 7150 next
 7160 print"{clr}{down}{down}{down}{down}     {rvon}note from omniscient narrator{rvof}"
 7170 print"{down}{down}     after several minutes of vigorous"
 7175 print"{down} argument,  boswain  agrees  to accept"
 7180 print"{down} your hands  as  collateral  for  your"
 7185 print"{down} fingers. you are safe for now, but if "
 7190 print"{down} your  debt should become ten  fingers"
 7195 print"{down}  then  off come your hands."
 7196 print"      {CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}"
 7205 gosub 6400
 7210 gosub 9000:hs=5:gosub 2000:return
 7300 if lp=ppgoto 7308
 7306 q$="correct!":y=16:gosub 5100
 7307 goto 7310
 7308 q$="incorrect!!":y=16:gosub 5100
 7310 if sc>0goto 7400
 7311 if sc=0goto 7350
 7315 q$="you now owe":y=14:gosub 5100
 7316 q$=str$(abs(sc))+" finger"
 7320 if sc<>-1 then q$=q$+"s"
 7325 y=12:gosub 5100
 7330 return
 7350 q$="we are even":y=12:gosub 5100
 7355 return
 7400 q$="you now have":y=14:gosub 5100
 7405 r$=" rubies":if sc=1 then r$=" ruby"
 7410 q$=str$(sc)+r$:y=12:gosub 5100
 7420 return
 8000 poke ql,12:print"{up}":print"     Y       Y       T"
 8010 print"     H       H       G  "
 8020 print"     {SHIFT--}       {SHIFT--}       B  "
 8030 print"     B       B       {SHIFT--}  "
 8040 print"     {CBM-G}       B       Y   "
 8050 print"    {CBM-M}        B       {CBM-M}   "
 8060 print"    Y                 {CBM-G}  "
 8070 print"    Y                 {CBM-G}  "
 8080 print"    Y                 {CBM-G}  "
 8085 print"    Y                 {CBM-G}  "
 8086 print"    Y                 {CBM-G}  "
 8087 print"    Y                 {CBM-G}  "
 8090 return
 8500 poke ql,12:print"{up}":print"     Y       Y       T"
 8501 print"     N{CBM-T}M     H     N{CBM-T}M"
 8502 print"    N{$a0} {$a0}M{$a0}{$a0} {$a0}{SHIFT--}{$a0}{$a0}{$a0}{$a0}N{$a0} {$a0}M"
 8503 print"   N     M       N     M"
 8504 print"  Y U{SHIFT-*}{SHIFT-*}{SHIFT-*}I T     Y U{SHIFT-*}{SHIFT-*}{SHIFT-*}I {CBM-G}"
 8505 print"          G     H        "
 8506 print"          B     {SHIFT--}        "
 8507 print"          {SHIFT--}     B        "
 8508 forli=1to4:print"                         ":next
 8599 return
 9000 print"{clr}"
 9003 print tab(11)"{CBM-@}FCCI"
 9004 print tab(10)"N    K"
 9005 print tab(9)"{SHIFT--}      M"
 9006 print tab(9)"GUCD{CBM-T}D{SHIFT-*}IG"
 9007 print tab(9)"{CBM-G}H {CBM-F}  {CBM-F}B{SHIFT--}"
 9008 print tab(9)"{CBM-G}Y {CBM-V}  {CBM-V}G{SHIFT--}"
 9009 print tab(8)"{CBM-M}  {CBM-G}    {CBM-G}H"
 9010 print tab(9)"{CBM-G} M   N {CBM-M}"
 9011 print tab(8)"N   M N   M"
 9012 print tab(7)"N     M{$a0}{$a0}   M"
 9013 print tab(6)"N      {CBM-M}      M"
 9100 return
11200 if nh<>1goto 11300
11210 for i=0to7:th(i)=0:nexti
11220 cc=1:nh=0
11300 i=-2*(.5+(lp=ll))
11320 j=4*ov(2)+2*ov(1)+1*ov(0)
11330 k=th(j)+i
11335 if k<>0 then k=k/abs(k)
11340 if cc>4 then th(j)=k
11360 ov(2)=ov(1):ov(1)=ov(0)
11370 ov(0)=1+(pp=lp)
11390 j=4*ov(2)+2*ov(1)+1*ov(0)
11400 i=th(j)
11410 if i=0goto 11450
11420 pp=(lp-.5)*i+.5
11430 goto 11500
11450 i=ti
11460 pp=2*((i/2)-int(i/2))
11500 ll=lp:cc=cc+1:return
13000 poke ql,12:print"{up}"
13002 print tab(19)"N{CBM-T}M"
13003 print tab(18)"N{$a0} {$a0}M"
13004 print tab(17)"N     M"
13005 print tab(16)"Y U{SHIFT-*}{SHIFT-*}{SHIFT-*}I {CBM-G}"
13006 print tab(16)"H  {rvon}   {rvof}"
13007 print tab(16)"{SHIFT--}I{rvon}{SHIFT-POUND}   {CBM-*}{rvof}"
13008 print tab(16)"B{CBM-Q}{rvon}{CBM-O}    {rvof}I"
13009 print tab(8)"{CBM-*}{rvon} FFF    {CBM-L}{rvof} {rvon}{CBM-M}{CBM-G}{CBM-H}{CBM-H}{rvof}{SHIFT--}"
13010 print tab(10)"{CBM-T}{CBM-Y}{CBM-U}{CBM-Y}{CBM-Y}{CBM-T}{CBM-T}{CBM-Q}{SHIFT-*}{rvon}{CBM-M}{CBM-G}{CBM-H}{CBM-H}{rvof}K"
13011 print tab(17)"J"
13012 return
62000 print"{clr}{down}{down}";tab(15-len(pg$));pg$;"  by c.t. nadovich"
62010 print"{down}     cursor #";nm$;"  copyright (c) 1980{down}"
62020 fori=1 to 10:print"{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}";:next i
62030 print"{down}a tribute to yakban..."
62040 print"{down}{down}press {rvon}return{rvof} to begin"
62050 gosub 6500
62060 print"{clr}":clr
62070 ql=205: rem line number where the cursor is
62080 goto 100
62090 gosub 6500:goto 60300
63000 get g$: if g$="" then 63000
63010 print asc(g$)
63020 goto 63000
