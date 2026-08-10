input macros
input hatching
input mparrows

verbatimtex
%&latex
\documentclass[a4paper,10pt]{article}
\usepackage{../paper-en}
\begin{document}
etex

filenametemplate "%j-%1c.mps";
prologues:=3;
setarrows(barbedsharp);
linecap:=butt;
%linejoin:=mitered;
%filenametemplate "%j-%1c.svg";
outputformat := "eps";




beginfig(10) 
save u,p;
u:=1.4cm;
path p[];

z.ends=(0.4,1.7);

p1=(-1,0)*u..(0,.9)*u..(1.1,0)*u..(0,-.7)*u..cycle;

p2=point y.ends of p1--(.7,.2)*u--(0,0)*u--(-.6,.1)*u--point x.ends of p1;

p3= p2--subpath z.ends of p1--cycle;

fill p3 withcolor .7;
draw p1;
draw p3 pensemibold;


label.top(btex $\Omega$ etex, point 3 of p1);
label.top(btex $K$ etex, (0,5)+point 2 of p2);
label.rt(btex $a_n$ etex, point 0 of p2);
label(btex $\dots$ etex rotated angle(point 1 of p2 - point 2 of p2), (3,-3)+point 1.5 of p2);
label.bot(btex $a_1$ etex, point 3 of p2);
label.lft(btex $a_0$ etex, point 4 of p2);
label.top(btex $\delta$ etex, point .5[x.ends,y.ends] of p1);
endfig;

beginfig(20)
save u,p;
u:=1.4cm;
path p[];

z.x=(0,0)*u;
p1=(-.7,1.3)*u{(1,1)}..{(1,0)}(.7,1.7)*u;
p11=z.x--p1--cycle;
p2=circle(z.x,1.2*u);
p3=z.x--(p2 cutbefore subpath (2,3) of p11 cutafter subpath (0,1) of p11)--cycle;
p4=(.4,-.1)*u--(.1,-.4)*u--(-.3,.-.2)*u--p1--cycle;

fill p4 withcolor .9;
fill p11 withcolor .8;
fill p3 withcolor .7;

draw p11;
draw p2;
draw p4;

label.top(btex $D_\rho$ etex, (0,4)+point 3 of p2);
label.ulft(btex $K$ etex, (1,0)+point 4.9 of p4);
label(btex $S$ etex, (0,.8)*u);
label.bot(btex $L$ etex, (0,-4)+point .5 of p1);
label.bot(btex $x$ etex, z.x);
endfig;

beginfig(30)
save u,p;
u:=1.4cm;
path p[];

z.x=origin;
z.r=(1.2,0)*u;
z.a=z.r rotated 130;
z.b=z.r rotated 50;

p2=circle(z.x,z.r);
p3=(p2 cutbefore z.b cutafter z.a) -- z.x--cycle;
p44=.85*z.a{(1,.2)}...{(1,-.6)}(.8*z.b);
p4=p44--(.4,.55)*u--(-.2,.45)*u--cycle;

fill p3 withcolor .9;
fill p44--z.x--cycle withcolor .8;
fill p4 withcolor .7;

draw p2;
draw z.a--z.x--z.b;
draw p4;

label.bot(btex $K$ etex, (0,-1)+point .5 of p44);
label.bot(btex $S$ etex, point 1 of p2);
label(btex $L$ etex, (0,10)+z.x);
label.top(btex $D_\rho$ etex, (0,4)+point 3 of p2);
endfig;

beginfig(40)
save u,p;
u:=1.4cm;
path p[];

p1=(-1,1.4)*u{(1,.6)}...{(1,-.6)}(.9,1.6)*u--(.5,.5)*u--(-.4,.4)*u--cycle;
p2=point .4 of p1--point 2.4 of p1;

draw p2 pensemibold;
draw p1 pensemibold;

label(btex $R$ etex, .5[point .5 of p2,point 1.5 of p1]);
label(btex $L$ etex, .5[point .5 of p2,point 3.5 of p1]);
whitelabel(btex $K$ etex, (-1,0)+point .3 of p2);
endfig;

beginfig(50)
save u,p;
u:=1.4cm;
path p[];

z.r0=(0,1.2)*u rotated 40;
z0=origin;
z1=z0+.2*z.r0;
z.r1=z.r0 rotated -29;
z2=z1+.1*z.r1;
z.r2=z.r1 rotated -29;
z3=z0+.1*z.r0;
z.r3=.9*z.r2 rotated -18;
z4=(.3,-.1)*u;
z.r4=.6*z.r3 rotated -12;

draw z4+z.r4--z4--z0--z0+z.r0;
draw z1--z1+z.r1;
draw z0+z.r0...z1+z.r1...z2+z.r2...z3+z.r3...z4+z.r4;

dOt z0+z.r0,z1,z1+z.r1,z4+z.r4;

label(btex $L$ etex, .5[z0+.7*z.r0,z1+.7*z.r1]);
label(btex $R$ etex, (0,-3)+.5[z2+.7*z.r2,z3+.7*z.r3]);
label.lft(btex $l$ etex, z0+z.r0);
label.ulft(btex $q$ etex, z1+z.r1);
label.llft(btex $p$ etex, z1);
%label(btex $\cdots$ etex rotated -55, (6,2)+.5[z2+z.r2,z3+z.r3]);
label.rt(btex $r$ etex, z4+z.r4);
endfig;

beginfig(51)
save u,p;
u:=1.4cm;
path p[];

z.r0=(0,1.2)*u rotated 40;
z0=origin;
z1=z0+.2*z.r0;
z.r1=z.r0 rotated -29;
z2=z1+.1*z.r1;
z.r2=z.r1 rotated -29;
z3=z0+.1*z.r0;
z.r3=.9*z.r2 rotated -18;
z4=(.3,-.1)*u;
z.r4=.6*z.r3 rotated -12;

draw z4+z.r4--z4--z0--z0+z.r0;
draw z1--z1+z.r1;
draw z2--z2+z.r2;
draw z3--z3+z.r3;
draw z0+z.r0...z1+z.r1...z2+z.r2...z3+z.r3...z4+z.r4;

label(btex $L_1$ etex, .5[z0+.7*z.r0,z1+.7*z.r1]);
label(btex $L_2$ etex, .5[z2+.7*z.r2,z1+.7*z.r1]);
label(btex $\cdots$ etex rotated -50, (0,-3)+.5[z2+.7*z.r2,z3+.7*z.r3]);
label(btex $L_m$ etex, .5[z4+.7*z.r4,z3+.7*z.r3]);
endfig;

beginfig(60)
save u,p;
u:=1.4cm;
path p[];

z.a=(-2,0)*u ;
z.b=(-.8,0)*u ;
z.c=(-.1,.3)*u ;
z.d=(0,.6)*u ;

p0=z.a{(0,1) }..(-.4,1.6)*u..{(0,-1)}z.d;
p1=p0--z.c--z.b--cycle;
p10=z.d--z.c--z.b;

numeric n, L;
n := 40;
L := arclength p0;

for i = 0 upto n:
  z[i] = point (arctime (i*L/n) of p0) of p0;
endfor;

z.o=whatever[z.a,z.b]=whatever[z.d,z[14]];

for i = 1 upto 14:
  draw (z.o--z[i] cutbefore p10) penhair withcolor .5;
endfor;
for i = 15 upto 39:
  draw (z.d--z[i]) penhair withcolor .5;
endfor;

draw p1 pensemibold;

label(btex $K$ etex, .5[z.d,z[12]]);

endfig;

end
