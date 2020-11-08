clear
clc

% expm()函数功能：求解状态转移矩阵；调用格式：eAt = expm(A*t)，式中，A为系统矩阵，t为定义的符号标量；
% ilaplace()函数功能：对于线性定常系统，求解矩阵的拉普拉斯反变换 
% inv()：求逆
% laplace()：拉普拉斯变换需注意的是，时域函数ft的拉普拉斯变换函数为Fs=laplace(Ft,t,s)；相应的，频域函数FS的拉普拉斯反变换函数为Ft=ilaplace(Fs,s,t)。在调用函数之前，必须正确定义符号变量s，t以及符号表达式Fs，Ft；
% simplify()函数的作用是化简符号计算结果表达式
% iztrans()，对于线性定常离散系统，求解矩阵的反变换，Fk=iztrans(Fz,z,k)式中，Fz 为进行Z反变换的矩阵，z,
% k为定义的符号标量；
% dsolve()求解线性定常齐次状态方程的解
% step()：计算单位阶跃响应；
% impulse()：计算单位脉冲响应；
% initial()：计算零输入响应；
% lsim()：计算任意输入(包括系统初始状态)响应。：
% c2d()：进行线性定常连续系统状态方程的离散化求解；
% c2dm()：允许用户可以指定不同的离散变换方式，将连续状态空间模型变换为离散状态空间模型，以提高离散化的精度；

% %2-1
% syms t
% A=[0 1 0;0 0 1;2 -5 4];
% B=[1;0;0];
% C=[1 0 0];
% D=[0];
% eAt=expm(A*t)
% eAt=simplify(eAt)
% x0=[1;1;1];
% % sys=ss(A,B,C,D);
% % t=0:0.01:2;
% % LT=length(t);
% % u1=ones(1,LT);
% % u=[u1];
% %initial(sys,x0)
% step(A,B,C,D,x0)
% %lsim(A,B,C,D,u,t,x0)
% grid

% %2-2
% A=[1 -2 2;-2 -2 4;2 4 -2];
% B=[1 0;0 1;1 1];
% C=[1 2 1;0 -1 2];
% D=[0 0;0 0];
% x0=[1;1;1];
% step(A,B,C,D,x0)
% t=0:0.01:2;
% LT=length(t);
% u1=ones(1,LT);
% u2=ones(1,LT);
% u=[u1;u2];
% lsim(A,B,C,D,u,t,x0)
% grid

% %2-3
% syms t
% t=0.1;
% A=[0 1 0;0 0 1;2 -5 4];
% B=[1;0;0];
% [G,H]=c2d(A,B,t)
% T=0.1;
% syms z k
% G=[0.9953 0.0906;-0.0906 0.8187];
% Fz=(inv(z*eye(2)-G))*z;
% Fk=iztrans(Fz,z,k)
% Fk=simplify(Fk)
% % H=[0.0047;0.0906];
% % C=[1 0 0];
% % D=0;
% % [yd,x,n]=dstep(G,H,C,D);
% % for k=1:n
% %     plot([k-1,k-1],[0,yd(k)],'k')
% %     hold on
% % end
% % e=1-yd;
% % for k=1:n
% %     for j=1:100
% %     u(j+(k-1)*100)=e(k);
% %     end
% % end
% % t=(0:0.01:n-0.01)*T;
% % [yc]=lsim([0 1;0 -2],[0;1],[1 0],[0],u,t);
% % plot(t/T,yc,':k')
% % axis([0 80 0 1])
% % hold off














