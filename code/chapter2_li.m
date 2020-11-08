clear
clc

% %2-1
% syms s t
% A=[-3 1;1 -3];
% FS=inv(s*eye(2)-A);
% eAt=ilaplace(FS,s,t);
% eAt=simplify(eAt)
% eAt=expm(A*t)
% eAt=simplify(eAt)
% 
% A=[-3 1;1 -3];
% t=0.2;
% eAt=expm(A*t)

% %2-2
% syms z k
% G=[0 1;-0.2 -0.9];
% Fz=(inv(z*eye(2)-G))*z;
% Fk=iztrans(Fz,z,k);
% Fk=simplify(Fk)

% %2-3
% r=dsolve('Dv=-3*v+w,Dw=v-3*w','v(0)=1,w(0)=0');
% x1=r.v
% x2=r.w

% %2-4
% A=[-3 1;1 -3];
% B=[0 1;1 0];
% C=[1 0;0 1];
% D=[0 0;0 0];
% x0=[1;1];
% t=0:0.01:2;
% LT=length(t);
% u1=ones(1,LT);
% u2=ones(1,LT);
% u=[u1;u2];
% lsim(A,B,C,D,u,t,x0)
% %step(A,B,C,D,x0)
% grid;

% %2-5
% T=0.1;
% G=[0.9953 0.0906;-0.0906 0.8187];
% H=[0.0047;0.0906];
% C=[1 0];
% D=0;
% [yd,x,n]=dstep(G,H,C,D);
% for k=1:n
%     plot([k-1,k-1],[0,yd(k)],'k')
%     hold on
% end
% e=1-yd;
% for k=1:n
%     for j=1:100
%     u(j+(k-1)*100)=e(k);
%     end
% end
% t=(0:0.01:n-0.01)*T;
% [yc]=lsim([0 1;0 -2],[0;1],[1 0],[0],u,t);
% plot(t/T,yc,':k')
% axis([0 80 0 1])
% hold off

% %2-6
% syms T
% A=[0 1;0 -2];
% B=[0;1];
% T=0.1;
% [G,H]=c2d(A,B,T)














