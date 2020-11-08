clc
clear

% ctrb()：根据动态系统生成能控性判别矩阵；
% obsv()：根据动态系统 生成能观性判别矩阵；
% ctrbf()：将不能控子系统 按能控性分解；
% obsvf()：将不能观子系统 按能观性分解；

% %3-1
% A=[-2 2 -1;0 -2 0;1 -4 0];
% B=[0 0;0 1;1 0];
% C=[1 -1 2;-2 0 1];
% D=[0 0;0 0];
% [num1,den1]=ss2tf(A,B,C,D,1)
% [num2,den2]=ss2tf(A,B,C,D,2)
% Qc=ctrb(A,B);
% Qo=obsv(A,C);
% rc=rank(Qc);
% ro=rank(Qo);
% L=size(A);
% if rc==L
%     str='系统能控'
% else 
%     str='系统不能控'
% end

% %3-2
% A=[4 1 0 0;0 4 0 0;0 0 4 1;0 0 0 4];
% B=[1 0;0 1;1 -1;-2 0];
% C=[1 1 2 1;1 2 2 0];
% D=[0 0;0 0];
% [num1,den1]=ss2tf(A,B,C,D,1)
% [num2,den2]=ss2tf(A,B,C,D,2)
% Qc=ctrb(A,B);
% Qo=obsv(A,C);
% rc=rank(Qc);
% ro=rank(Qo)
% L=size(A);
% if ro==L
%     str='系统能观'
% else
%     str='系统不能观'
% end
% [AP BP CP P K]=obsvf(A,B,C)

% %3-3
% A=[-4 1 0 0 0 0;0 -4 0 0 0 0;0 0 3 1 0 0;0 0 0 3 0 0;0 0 0 0 -1 1;0 0 0 0 0 -1];
% B=[1 3;5 7;4 3;0 0;1 6;0 0];
% C=[3 1 0 5 0 0;1 4 0 2 0 0];
% D=[0 0;0 0];
% Qc=ctrb(A,B);
% Qo=obsv(A,C);
% rc=rank(Qc);
% ro=rank(Qo)
% L=size(A);
% [AC BC CC PC KC]=ctrbf(A,B,C)
% ACO=AC(3:6,3:6)
% BCO=BC(3:6,1:2)
% CCO=CC(1:2,3:6)
% DCO=[0 0;0 0]
% [ACOO BCOO CCOO PCO KCO]=obsvf(ACO,BCO,CCO)
% ACFO=AC(1:2,1:2)
% BCFO=BC(1:2,1:2)
% CCFO=CC(1:2,1:2)
% [ACFOO BCFOO CCFOO PCFO KCFO]=ctrbf(ACFO,BCFO,CCFO)
















