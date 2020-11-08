clc
clear

% %5-1
% A=[-2 -1 1;1 0 1;-1 0 1];
% B=[1;1;1];
% Qc=ctrb(A,B);
% rc=rank(Qc);
% % f=conv([1 1],conv([1 2],[1 3]));
% % K=[zeros(1,length(A)-1) 1]*inv(Qc)*polyvalm(f,A)
% P=[-1 -2 -3];
% % K=acker(A,B,P)
% K=place(A,B,P)

% %5-2
% A=[0 0 2;1 0 9;0 1 0];
% B=[3;2;1];
% C=[0 0 1];
% n=3;
% qo=obsv(A,C);
% ro=rank(qo);
% if (ro==n)
%     disp('sysytem is observability')
%     P=[-3 -4 -5];
%     A1=A';
%     B1=C';
%     K=acker(A1,B1,P)
%     G=K'
%     AGC=A-G*C
% elseif (ro~=n)
%     disp('system is not observability')
% end
    
% %5-3
% A=[0 1 0;0 0 1;-6 -11 -6];
% B=[0;0;1];
% C=[1 0 0];
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
% P=[-2,-3];
% K=acker(AX,BX,P);
% G=K'
% AGAZ=(A11_bar-G*A21_bar)
% AGAY=(A11_bar-G*A21_bar)*G+A12_bar-G*A22_bar
% BGBU=B1_bar-G*B2_bar

% %5-4
% A=[0 1;20.6 0];
% b=[0;1];
% C=[1 0];
% disp('The rank of Controllability Matrix')
% rc=rank(ctrb(A,b))
% disp('The rank of Observability Matrix')
% ro=rank(obsv(A,C))
% P=[-1.8+2.4*j -1.8-2.4*j];
% K=acker(A,b,P)
% A1=A';
% b1=C';
% C1=b';
% P1=[-8 -8];
% K1=acker(A1,b1,P1);
% G=K1'
    
    
    
    
    
    
    
    
    