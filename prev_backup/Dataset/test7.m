load('mynet.mat')

[Y,Xf,Af] = net(Xs,Xi,Ai);
perf = perform(net,Ts,Y);

Xnew = testing(:,1);
Xnew = num2cell(Xnew);

[netc,Xic,Aic] = closeloop(net,Xf,Af);
view(netc)

y2 = netc(Xnew,Xic,Aic)