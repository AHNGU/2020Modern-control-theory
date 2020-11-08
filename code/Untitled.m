clear
clc

%1-1
% num=[1 2];
% den=[1 3 3 1];
% [a,b,c,d]=tf2ss(num,den)

%1-2
% num=[1 3 1];
% den=[1 2 1];
% [a,b,c,d]=tf2ss(num,den)

%1-3
% num=[1 1];
% den=[1 7 14 5];
% [a,b,c,d]=tf2ss(num,den)
% [p,j]=jordan(a)
% [ap,bp,cp,dp]=ss2ss(a,b,c,d,inv(p))

%1-4
% a=[0 1 0 0;-1 -1 1 1;1 0 -3 0;-50 0 0 -2];
% b=[0;0;0;10];
% c=[1 0 0 0];
% d=0;
% [num1,den1]=ss2tf(a,b,c,d,1)

%1-5
% A1=[2 4;4 2];
% B1=[1 -1;-1 1];
% C1=[2 0;0 2];
% D1=[0 0;0 0];
% A2=[1 2;4 3];
% B2=[1 -1;0 1];
% C2=[1 0;0 2];
% D2=[0 0;0 0];
% sign=-1;
% [num1,den1]=ss2tf(A1,B1,C1,D1,1)
% [num2,den2]=ss2tf(A1,B1,C1,D1,2)
% [num3,den3]=ss2tf(A2,B2,C2,D2,1)
% [num4,den4]=ss2tf(A2,B2,C2,D2,2)
% [a3,b3,c3,d3]=series(A1,B1,C1,D1,A2,B2,C2,D2)
% [a4,b4,c4,d4]=parallel(A1,B1,C1,D1,A2,B2,C2,D2)
% [a5,b5,c5,d5]=feedback(A1,B1,C1,D1,A2,B2,C2,D2,sign)
% [num5,den5]=ss2tf(a3,b3,c3,d3,1)
% [num6,den6]=ss2tf(a3,b3,c3,d3,2)
% [num7,den7]=ss2tf(a4,b4,c4,d4,1)
% [num8,den8]=ss2tf(a4,b4,c4,d4,2)
% [num9,den9]=ss2tf(a5,b5,c5,d5,1)
% [num10,den10]=ss2tf(a5,b5,c5,d5,2)




