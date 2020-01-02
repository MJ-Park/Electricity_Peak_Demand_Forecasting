clear; clc;

tmp = [];
tmp_norm = [];

%% SPLIT DATASET
% for compare_year=2011:2018
%     load('merged_data.mat')
%     merged = merged(find(merged(:,1) == compare_year),:);
%     
%     tmp(:,:,end+1) = merged;
%     
%     filename = [ "merged_" + num2str(compare_year) + ".mat" ];
%     save(filename,'merged')
% end
% 
% for compare_year=2011:2018
%     load('normalized_data.mat')
%     normalized_data = normalized_data(find(normalized_data(:,1) == compare_year),:);
%     
%     tmp_norm(:,:,end+1) = normalized_data;
%     
%     filename = [ "normalized_" + num2str(compare_year) + ".mat" ];
%     save(filename,'normalized_data')
% end

tmp(:,:,1) = []; 
tmp_norm(:,:,1) = [];

%% DRAW GRAPH

figure(1)
plot([1:365], tmp(:,4,1),'k')
hold on
plot([1:365], tmp(:,4,2))
plot([1:365], tmp(:,4,3))
plot([1:365], tmp(:,4,4))
plot([1:365], tmp(:,4,5))

axis([0 365 40000 100000])
hold off

figure(2)
plot([1:365], tmp_norm(:,4,1),'k')
hold on
plot([1:365], tmp_norm(:,4,2))
plot([1:365], tmp_norm(:,4,3))
plot([1:365], tmp_norm(:,4,4))
plot([1:365], tmp_norm(:,4,5))
plot([1:365], tmp_norm(:,4,6))
plot([1:365], tmp_norm(:,4,7))
plot([1:365], tmp_norm(:,4,8))
hold off
