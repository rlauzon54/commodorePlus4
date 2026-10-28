    0 clr:pg$="enigma":nm$="23":goto 62000
    1 rem alex breed
    2 rem 1185 boylston st. #27
    3 rem boston, ma 02215
    4 rem
    5 rem cursor #23, dec 1980
    6 rem copyright(c)1980 the code works
    7 rem box 550, goleta, ca. 93017
    8 rem
   10 rem as of 9dec80
  100 ct=50:dim ct$(ct),x%(5,26)
  110 data4,16,15,19,8,3,25,6,13,1,7,26,20,10,12,9,14,17,22,2,24,23,21,5,18,11
  120 data1,23,9,24,25,2,7,18,26,4,13,15,20,17,10,8,5,3,14,22,16,12,21,11,6,19
  130 data1,8,2,20,3,14,4,19,5,26,6,17,7,22,9,16,10,23,11,21,12,25,13,15,18,24
  140 data1,3,2,5,4,18,6,16,7,26,8,19,9,11,10,24,12,15,13,22,14,23,17,20,21,25
  150 data1,6,2,22,3,12,4,11,5,20,7,16,8,24,9,13,10,17,14,25,15,26,18,23,19,21
  160 x=rnd(0): rem seed
  170 restore
  180 for w=1 to 5
  190 for k=1 to 13:read x,y
  200 x%(w,x)=y:x%(w,y)=x
  210 next k:next w
  220 pr$="should i set up the machine":df$="n":gosub 840
  230 if left$(in$,1)="y" then gosub 740:goto 420
  240 t$="abcde"
  250 for k=1 to 3
  260 print "{down}which wheel in slot"k"(";t$;")? ";:gosub 60000
  270 if len(in$)<>1 then print"{down}one letter, please.":goto 260
  280 if in$<"a"orin$>"e" then print"{down}a letter from 'a' to 'e', please.":goto 260
  290 t=asc(in$)-64:if mid$(t$,t,1)=" " then 
  300 if mid$(t$,t,1)=" " then print"{down}wheel ";in$;" is already taken.":goto 260
  310 u$="":if t>1 then u$=u$+left$(t$,t-1)
  320 t$=u$+" "+mid$(t$,t+1)
  330 w$(k)=in$:w(k)=t
  340 next k
  350 for k=1 to 3
  360 print"{down}setting for wheel"k"(a-z)? ";
  370 gosub 60000:if len(in$)<>1 then print"{down}one letter, please.":goto 360
  380 t=asc(in$)-64
  390 if t<1 or t>26  then  print"{down}a letter{left}{left}{left}{left}{left}{left}{down}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{CBM-T}{up}, please!":goto 360
  400 s(k)=t:s$(k)=in$
  410 next k
  420 print"{down}here{$a0}are the wheels and settings:"
  430 print"{down}(you'll need 'em to decode the message)"
  440 gosub 820
  450 fork=1 to 3:s(k)=asc(s$(k))-64:next k
  460 print"{down}please enter your message."
  470 print"{down}enter a blank line when done."
  480 for i=0 to ct
  490 print"? ";
  500 gosub 60000:if in$=""  then  n=i-1:goto 550
  510 ct$(i)=in$
  520 next i
  530 print"{down}that's all i can handle... sorry."
  540 n=ct
  550 if n<0 then 710
  560 k=0:g=0
  570 print"{down}the encryption follows...{down}"
  580 fori=0ton:ct$=ct$(i)
  590 forj=1tolen(ct$)
  600 f=asc(mid$(ct$,j,1))-64
  610 iff<1orf>26 then 680
  620 forw=-2to2:l=3-abs(w):gosub 870:nextw:rem l=1,2,3,2,1
  630 printchr$(f+64);
  640 k=k+1:ifk>4 then print" ";:k=0:g=g+1:ifg>5 then print:g=0
  650 s(1)=s(1)+1:ifs(1)=27 then s(1)=1
  660 s(2)=s(2)-1:ifs(2)=0 then s(2)=26
  670 s(3)=s(3)+1:ifs(3)=27 then s(3)=1
  680 nextj:nexti
  690 goto 700
  700 ifk>0 then forj=1to5-k:printchr$(26*rnd(1)+65);:next
  705 if g>0 or k>0  then  print
  710 pr$="another message":df$="y":gosub 840:ifin$="n" then print"{clr}{down}{down}":end
  720 pr$="same machine setup":df$="y":gosub 840:ifin$="y" then 450
  730 goto 220
  740 t$="abcde":fork=1to3
  750 t=int(rnd(1)*len(t$))+1
  760 w$(k)=mid$(t$,t,1):w(k)=asc(w$(k))-64
  770 u$="":ift>1 then u$=left$(t$,t-1)
  780 t$=u$+mid$(t$,t+1)
  790 s(k)=int(rnd(1)*26)+1:s$(k)=chr$(s(k)+64)
  800 nextk:return
  810 s$(k)=chr$(s(k)+64):nextk:goto 420
  820 print"{down}slot","wheel","setting":print"EEEE","EEEEE","EEEEEEE"
  830 fork=1to3:printk,w$(k),s$(k):next:return
  840 print"{down}";pr$;"? ";:gosub 60000:in$=left$(in$,1):if in$="" then  in$=df$
  850 ifin$="y"orin$="n" then return
  860 print"{down}please answer 'yes' or 'no'.":goto 840
  870 f=f-s(l)+1:iff<1 then  f=f+26
  880 f=x%(w(l),f)
  890 f=f+s(l)-1:iff>26 then f=f-26
  900 return
60000 in$=" ":zt=ti:zc=2:zd$=chr$(20)
60010 getz$:ifz$<>"" then 60070
60020 ifzt<=ti then printmid$(" {CBM-+}",zc,1);"{left}";:zc=3-zc:zt=ti+15
60030 goto 60010
60070 z=asc(z$):zl=len(in$):if(zand127)<32 then print" {left}";:goto 60110
60080 iffland(zand127)>64and(zand127)<91 then z$=chr$((z+128)and255)
60090 ifzl>254 then 60010
60100 in$=in$+z$:printz$;zd$;z$;
60110 ifz=13 then in$=mid$(in$,2):printcr$;:return
60120 ifz=20andzl>1 then in$=left$(in$,zl-1):print"{left}";:goto 60010
60130 ifz=141 then z$=chr$(-20*(zl>1)):forz=2tozl:printz$;:nextz:goto 60000
60140 goto 60010
62000 rem graphics and upper case poke 59468,12
62005 print"{clr}{down}{down}";tab(15-len(pg$));pg$;"  by alex breed"
62010 print"{down}     cursor #";nm$;"  copyright (c) 1980{down}"
62020 fori=1to10:print"{SHIFT-*}{SHIFT-*}{SHIFT-*}{SHIFT-*}";:nexti
62030 print"{down}your very own encryption machine"
62040 print"{down}{down}press {rvon}return{rvof} to begin"
62050 get t$:if t$="" then 62050
62060 print"{clr}":clr:cr$=chr$(13):goto 100
