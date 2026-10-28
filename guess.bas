    5 color 0,1: color 4,1: color 1,2: x=rnd(0)
   10 print "guess"
   20 print "creative computing, morristown, nj"
   30 print
   40 print "this is a number guessing game.  i'll"
   50 print "think of a number between 1 and 100."
   60 print "then you'll have to guess what it is."
   70 print
   80 l=100
   90 l1=int(log(l)/log(2))+1
  100 print "i'm thinking of a number - 1 and";l
  110 g=1: m=int(l*rnd(1)+1)
  120 input "now you try to guess what it is"; n:print
  130 if n>0 then 160
  140 print "nope.  try again."
  150 goto 120
  160 if n=m then 230
  170 g=g+1
  180 if n>m then 210
  190 print "too low.  try a bigger answer."
  200 goto 120
  210 print "too high.  try a smaller answer."
  220 goto 120
  230 print "that's it! you got it in";g;" tries."
  240 if g<l1 then 290
  230 if g=l1 then 300
  260 print "you should have been able to get"
  270 print "it in only";l1;" tries."
  280 goto 310
  290 print "very ";
  300 print "good."
  310 goto 100
