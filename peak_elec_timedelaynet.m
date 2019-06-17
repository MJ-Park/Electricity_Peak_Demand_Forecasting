clear; clc;

filelist = dir;
folder = filelist(1,:).folder;
folder_importdata = [folder + "\importdata"];

load([folder_importdata + "\training_data.mat"])


% % Using timedelaynet
% clear; clc;
% 
% load('data.mat')
% 
% X = training(1:end-5,1)';
% T = training(6:end,1)';
% X = num2cell(X);
% T = num2cell(T);
% % 
% % X_tr = X(1,1:450-65);
% % T_tr = T(1,1:450-65);
% % 
% % X_te = X(1,450-64:end);
% % T_te = T(1,450-64:end);
% 
% net = narxnet(1:5,1:2,10);
% [Xs, Xi, Ai, Ts] = preparets(net, X,{}, T);
% % net = timedelaynet(1:5, 10);
% % [Xs, Xi, Ai, Ts] = preparets(net, X, T);
% % view(net)
% 
% net = train(net, Xs, Ts, Xi,{}, Ai);
% view(net)
% 
% [Y,Xf,Af] = net(Xs,Xi,Ai);
% perf = perform(net,Ts,Y)
% view(net)
% 
% 
% 
% err1 = mean(abs(cell2mat(Ts)-cell2mat(Y)))
% 
% 
% 
% [netc,Xic,Aic] = closeloop(net,Xf,Af);
% view(netc)
% [Y,Xf,Af] = netc(X,Xic,Aic);
% perf = perform(netc,T,Y)
% % y2 = netc(Xnew,Xic,Aic)
% err2 = mean(abs(cell2mat(T)-cell2mat(Y)))
% 
% 
% % % plotresponse(Ts,)
% % 
% % % save('mynet.mat')
% % 
% % % X = simplenarxInputs;
% % % T = simplenarxTargets;
% % % 
% % % net = narxnet(1:2,1:2,20);
% % % [Xs,Xi,Ai,Ts] = preparets(net,X,{},T);
% % % net = train(net,Xs,Ts,Xi,Ai);
% % % view(net)
% % % y = net(Xs,Xi,Ai);
