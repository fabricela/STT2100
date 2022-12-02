Data drug;
   Input drug$ x r n @@;
   Datalines;
A  .1   1  10   A  .23  2  12   A  .67  1   9
B  .2   3  13   B  .3   4  15   B  .45  5  16   B  .78  5  13
C  .04  0  10   C  .15  0  11   C  .56  1  12   C  .7   2  12
D  .34  5  10   D  .6   5   9   D  .7   8  10
E  .2  12  20   E  .34 15  20   E  .56 13  15   E  .8  17  20
;
	Run;

Proc Genmod data=drug;
   Class drug;
   Model r/n = x drug / dist = bin
                        link = logit
                        lrci;
	Run;
