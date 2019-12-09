clear; clc; close all;

norm=[];

for i=2011:2018
    filename = ['normalized_' num2str(i) '.mat'];
    load(filename)
    norm(:,:,end+1) = normalized_data;
end

figure(1)

plot(norm(:,4,2))
hold on

plot(norm(:,4,3))
hold on

plot(norm(:,4,4))
hold on

plot(norm(:,4,5))
hold on

plot(norm(:,4,6))
hold on

plot(norm(:,4,7))
hold on

plot(norm(:,4,8))
hold on

plot(norm(:,4,9),'LineWidth',3)
hold on



title('2011-2018 GDP Normalized Electricity peak demand')