clc
clear

% %6-1
% A=[1 3 5 9;6 2 1 1;3 7 4 3;4 3 7 7];
% P=sdpvar(4,4,'symmetric');
% Fcond=[P>0,A'*P+P*A<0];
% ops=sdpsettings('verbose',0,'solver','sedumi');
% diagnostics=solvesdp(Fcond,[],ops);
% [m p]=checkset(Fcond)
% tmin=min(m)
% if tmin>0
%     disp('System is table')
% else
%     disp('System is nutable')
% end

% %6-2
% A=[5 3;1 2];
% B=[2;1];
% P=sdpvar(2,2,'symmetric');
% Q=sdpvar(2,2,'symmetric');
% R=sdpvar(1,1,'symmetric');
% Fcond=[[A'*P+P*A+Q P*B;B'*P -R]<0,P>0,Q>0,R>0];
% ops=sdpsettings('verbose',0,'solver','sedumi');
% diagnostics=solvesdp(Fcond,[],ops);
% [m p]=checkset(Fcond);
% tmin=min(m)
% Ph=double(P)
% Qh=double(Q)
% Rh=double(R)

% %6-3
% A=[1 2 4;1 1 1;0 2 1];
% B=[1;2;1];
% L=sdpvar(3,3,'symmetric');
% V=sdpvar(1,3,'full');
% Fcond=[L>0,A*L+L*A'+B*V+V'*B'<0];
% ops=sdpsettings('verbose',0,'solver','sedumi');
% diagnostics=solvesdp(Fcond,[],ops);
% [m p]=checkset(Fcond);
% tmin=min(m);
% if tmin>0
%     Vh=double(V)
%     Lh=double(L)
%     disp('系统可以镇定，并且反馈增益如下')
%     K=Vh*inv(Lh)
% else
%     disp('系统不可镇定')
% end

% %6-4
% A=[2 1;0 1];
% B=[1 3;1 2];
% L=sdpvar(2,2,'symmetric');
% V=sdpvar(2,2,'full');
% Fcond=[L>0,A*L+L*A'+B*V+V'*B'<0];
% ops=sdpsettings('verbose',0,'solver','sedumi');
% diagnostics=solvesdp(Fcond,[],ops);
% [m p]=checkset(Fcond);
% tmin=min(m);
% if tmin>0
%     Vh=double(V)
%     Lh=double(L)
%     disp('系统可以镇定，并且反馈增益如下')
%     K=Vh*inv(Lh)
% else
%     disp('系统不可镇定')
% end





