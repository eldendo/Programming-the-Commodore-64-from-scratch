10 rem +------------------------------------+
20 rem ! eded64 - a tiny editor for the c64 !
30 rem !   (c) 2024 by ir. marc dendooven   !
40 rem +------------------------------------+

100 rem *** settings ***
110 lm=100: rem max lines 
200 rem *** end settings ***
300 gosub 4000 : rem init
310 gosub 1000 : rem print
320 gosub 2000 : rem input
330 goto 310

1000 rem *** print ***
1005 print chr$(147);
1010 rem if ll=0 then print "{rvon}*** editor empty ***":return
1020 for i=0 to ll
1030 if i=cl then print"{rvon}";
1040 print i;l$(i):rem ,len(l$(i))
1050 next i
1055 rem print:print cl,ll
1060 return

2000 rem *** input ***
2005 print:i$=""
2020 get i$: if i$="" then 2020
2030 if i$="{up}" and cl>0 then cl=cl-1:return
2040 if i$="{down}" and cl<ll then cl=cl+1:return
2050 if i$=chr$(20) then 2200  
2130 if i$=chr$(13) then gosub 3000:return:rem insert line
2140 if(i$>=chr$(32)and i$<=chr$(127))or i$>=chr$(160) then l$(cl)=l$(cl)+i$
2150 return

2200 rem ** backspace **
2210 l=len(l$(cl))
2220 if l>0 then l$(cl)=left$(l$(cl),l-1):return
2225 if cl=ll then 2240
2230 for i=cl to ll :l$(i)=l$(i+1):next
2240 ll=ll-1:if cl>0 then cl=cl-1
2250 return

3000 rem ** insert line ** 
3005 if ll>=lm-1 then print "*** editor full ***":stop
3010 ll=ll+1:cl=cl+1
3020 if cl=ll then return
3030 for i=ll to cl step -1:l$(i)=l$(i-1):next:l$(cl)=""
3040 return


4000 rem *** init ***
4010 dim l$(lm-1):rem ll,cl,cp (last line,current line,current position)
4020 return



