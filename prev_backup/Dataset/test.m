clear; clc;

load('merged_data.mat')

dataset = merged(:,1:3);
dataset(:,4) = zeros(size(merged,1),1);

% for i=1:424
%     if mod(i,7) == 1
%         dataset(i,4) = "SAT";
%     elseif mod(i,7) == 2
%         dataset(i,4) = "SUN";
%     elseif mod(i,7) == 3
%         dataset(i,4) = "MON";
%     elseif mod(i,7) == 4
%         dataset(i,4) = "TUE";
%     elseif mod(i,7) == 5
%         dataset(i,4) = "WED";
%     elseif mod(i,7) == 6
%         dataset(i,4) = "THU";
%     elseif mod(i,7) == 0
%         dataset(i,4) = "FRI";
%     end
% end