clear
clc

% tf；传函；num：分子；den：分母；多项式形式；
% zpk：零级点形式；z：零点；p：极点；k：系数；
% ss：状态空间表达式；sys = ss(A,B,C,D) ；sys = ss(G,H,C,D,T)；
% series()：串联；parallel()：并联；feedback()：反馈；sys = feedback(sys_1,sys_ 2,sign) sign表示反馈极性，正反馈取1，负反馈取-1；
% tf2ss()：多项式形式的传递函数转换为状态空间的形式；zp2ss()：零极点形式的传递函数转换为状态空间的形式
% ss2tf()：ss2zp()：实现从状态空间表达式到传递函数阵的转换；
% eig()：直接计算矩阵特征值和特征向量；
% jordan()：当矩阵A具有重特征根时，计算所有特征向量。
% ss2ss()：实现系统的线性非奇异变换；[ap,bp,cp,dp]=ss2ss(a,b,c,d,p)：(a,b,c,d）和[ap,bp,cp,dp]为变换前和变换后系统的状态空间模型的系数矩阵，P为线性非奇异变换矩阵；

% %1-1
% num=[1 2];
% den=[1 3 3 1];
% [a,b,c,d]=tf2ss(num,den)

% %1-2
% num=[1 3 1];
% den=[1 2 1];
% [a,b,c,d]=tf2ss(num,den)

% %1-3
% num=[1 1];
% den=[1 7 14 5];
% [a,b,c,d]=tf2ss(num,den)
% [p,j]=jordan(a)
% [ap,bp,cp,dp]=ss2ss(a,b,c,d,inv(p))

% %1-4
% a=[0 1 0 0;-1 -1 1 1;1 0 -3 0;-50 0 0 -2];
% b=[0;0;0;10];
% c=[1 0 0 0];
% d=0;
% [num1,den1]=ss2tf(a,b,c,d,1)

% %1-5
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




