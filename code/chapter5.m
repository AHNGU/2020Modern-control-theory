clc
clear

% acker()：单输入系统的极点配置；调用格式：K=Acker(A,B,p)其中，P为配置极点，K为反馈增益矩阵；
% place()：单输入或多输入系统的极点配置；


% %5-1(1)
% A=[0 2;-2 0];
% B=[1;0];
% C=[0 1];
% D=[0];
% Qc=ctrb(A,B);
% rc=rank(Qc);
% P=[-3+j*2,-3-j*2];
% K=acker(A,B,P)

% %5-1(2)
% A=[1 -1 1;0 1 1;1 0 1];
% B=[0;0;1];
% Qc=ctrb(A,B);
% rc=rank(Qc);
% P=[-5,-1+j,-1-j];
% K=acker(A,B,P)

% %5-1(3)
% A=[0 0 -1;1 0 -3;0 1 -3];
% B=[1;1;0];
% C=[0 1 -2];
% q=[1 0 0;0 1 0;0 0 1];
% if det(A)~=0
%     P=lyap(A,q)
%     det1=det(P(1,1))
%     det2=det(P(2,2))
%     detp=det(P)
% end
% Qc=ctrb(A,B)
% rc=rank(Qc)
% L=size(A);
% if rc==L
%     str='系统能控'
% else 
%     str='系统不能控'
% end
% [AP BP CP P K]=ctrbf(A,B,C)
% AP1=AP(2:3,2:3)
% BP1=BP(2:3,:)
% AP2=AP(1:1,1:1)
% BP2=BP(1:1,:)
% Qc1=ctrb(AP1,BP1);
% rc1=rank(Qc1)
% Qc2=ctrb(AP2,BP2);
% rc2=rank(Qc2)
% P=[-1+1*j,-1-1*j];
% K1=acker(AP1,BP1,P)

% %5-1(4)
% A=[-1 0 1;1 -2 0;0 0 -3];
% B=[0;1;1];
% C=[1 1 1];
% n=3;
% qo=obsv(A,C);
% ro=rank(qo);
% if (ro==n)
%     disp('sysytem is observability')
%     P=[-5 -5 -5];
%     A1=A';
%     B1=C';
%     K=acker(A1,B1,P)
%     G=K'
%     AGC=A-G*C
% elseif (ro~=n)
%     disp('system is not observability')
% end
% T_inv=[0 1 0;0 0 1;1 0 0];
% T=inv(T_inv);
% A_bar=T_inv*A*T;
% B_bar=T_inv*B;
% C_bar=C*T;
% A11_bar=[A_bar(1:2,1:2)];
% A12_bar=[A_bar(1:2,3)];
% A21_bar=[A_bar(3,1:2)];
% A22_bar=[A_bar(3,3)];
% B1_bar=B(1:2,1);
% B2_bar=B(3,1);
% A1=A11_bar;
% C1=A21_bar;
% AX=(A11_bar)';
% BX=(C1)';
% P=[-5,-5];
% K=acker(AX,BX,P);
% G=K'
% AGAZ=(A11_bar-G*A21_bar)
% AGAY=(A11_bar-G*A21_bar)*G+A12_bar-G*A22_bar
% BGBU=B1_bar-G*B2_bar

% %5-2
% A=[2 1 0 0;0 2 0 0;0 0 -1 0;0 0 0 -1];
% B=[0;1;1;1];
% Qc=ctrb(A,B);
% rc=rank(Qc);
% P=[-2,-2,-2,-1];
% L=size(A);
% if rc==L
%     str='系统能控'
% else 
%     str='系统不能控'
% end
% K=acker(A,B,P)

% %5-3(1)
% A=[-1 -2 -2;0 -1 1;1 0 -1];
% B=[2;0;1];
% Qc=ctrb(A,B);
% rc=rank(Qc);
% L=size(A);
% if rc==L
%     str='系统能控'
% else 
%     str='系统不能控'
% end

% %5-3(2)
% A=[-2 1 0 0 0;0 -2 1 0 0;0 0 -2 0 0;0 0 0 -5 1;0 0 0 0 -5];
% B=[4;5;0;7;0];
% Qc=ctrb(A,B);
% rc=rank(Qc);
% L=size(A);
% if rc==L
%     str='系统能控'
% else 
%     str='系统不能控'
% end
% C=[1 1 1 1 1];
% [AP BP CP P K]=ctrbf(A,B,C)
% AP1=AP(3:5,3:5);
% AP2=AP(1:2,1:2)
% q=[1 0;0 1];
% if det(A)~=0
%     P=lyap(AP2,q)
%     det1=det(P(1,1))
%     detp=det(P)
% end

% %5-4
% A=[-1 0 0 0;2 -3 0 0;0 0 2 0;4 -1 2 -4];
% B=[0;0;1;2];
% C=[3 0 1 0];
% D=[0];
% [num1,den1]=ss2tf(A,B,C,D,1)
% [z,p,k]=tf2zpk(num1,den1)
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
% if rc==L
%     str='系统能控'
% else 
%     str='系统不能控'
% end
% [A1 B1 C1 P1 K1]=ctrbf(A,B,C)
% AC=A1(3:4,3:4)
% BC=B1(3:4,:)
% CC=C1(:,3:4)
% [A2 B2 C2 P2 K2]=obsvf(A,B,C)
% AO=A2(3:4,3:4)
% BO=B2(3:4,:)
% CO=C2(:,3:4)
% AFO=A2(1:2,1:2)
% BFO=B2(1:2,:)
% CFO=C2(:,1:2)
% [ACO BCO CCO PCO KCO]=obsvf(AC,BC,CC)
% AFC=A1(1:2,1:2)
% BFC=B1(1:2,:)
% CFC=C1(:,1:2)
% [ACFOO BCFOO CCFOO PCFO KCFO]=ctrbf(AFC,BFC,CFC)
% q=[1 0;0 1];
% if det(AFC)~=0
%     P2=lyap(AFC,q)
%     det1=det(P2(1,1))
%     det2=det(P2)
% end
% q=[1 0;0 1];
% if det(AFO)~=0
%     P3=lyap(AFO,q)
%     det3=det(P3(1,1))
%     det4=det(P3)
% end
% Qc1=ctrb(AC,BC);
% rc1=rank(Qc1);
% P4=[-2+j*2,-2-j*2];
% K=acker(AC,BC,P4)
% Qo1=obsv(AO,CO)
% ro1=rank(Qo1)
% n=2
% if (ro1==n)
%     disp('sysytem is observability')
%     P5=[-3 -4];
%     A3=AO';
%     B3=CO';
%     K1=acker(A3,B3,P5)
%     G=K1'
%     AGC=AO-G*CO
% elseif (ro~=n)
%     disp('system is not observability')
% end





