clc
clear

% Poly()：用来求矩阵特征多项式系数；
% roots()：函数用来求取特征值；
% lyap()：用来求解系统的李雅普诺夫方程；
% det()：行列式；

% %4-1
% A=[1 2 4;1 1 1;0 2 1];
% P=poly(A),V=roots(P)
% A1=[0 1 0 0;0 0 1 0;0 0 0 1;0 -1 -3 -3];
% P1=poly(A1),V=roots(P1)

% %4-2
% A=[1 0 -1;0 1 0;0 0 2];
% q=[1 0 0;0 1 0;0 0 1];
% if det(A)~=0
%     P=lyap(A,q)
%     det1=det(P(1,1))
%     det2=det(P(2,2))
%     det3=det(P)
% end
% P=poly(A),V=roots(P)