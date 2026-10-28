   10 rem ahl's simple benchmark
   20 x=rnd(0)
   30 sa=ti
   40 for n = 1 to 100
   50 a=n
   60 for i = 1 to 10
   70 a=sqr(a)
   80 r=r+rnd(1)
   90 next i
  100 for i = 1 to 10
  110 a=a^2
  120 r=r+rnd(1)
  130 next i
  140 s=s+a
  150 next n
  160 ep=ti-sa
  170 print "time (ms): ";ep
  180 print "accuracy: ";abs(1010-s/5)
  190 print "random: ";abs(1000-r)
