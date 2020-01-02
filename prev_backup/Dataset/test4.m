clear; clc;
% close all;

% load('weekday.mat')
% 
% oct = weekday(find(weekday(:,2)==10),:);
% 
% for i=2011:2018
%     oct_split(:,:,i-2010) = oct(find(oct(:,1) == i),:);
% end

load('merged_data.mat')

oct = merged(find(merged(:,2)==10),:);

for i=2011:2018
    oct_split(:,:,i-2010) = oct(find(oct(:,1) == i),:);
end

% figure(1)
% plot(oct_split(:,4,1),'k')
% hold on
% plot(oct_split(:,4,2),'b')
% plot(oct_split(:,4,3),'g')
% plot(oct_split(:,4,4),'r')
% % legend('2011', '2012', '2013', '2014')
% plot(oct_split(:,4,5),'k','LineWidth',2)
% plot(oct_split(:,4,6),'b','LineWidth',2)
% plot(oct_split(:,4,7),'g','LineWidth',2)
% plot(oct_split(:,4,8),'r','LineWidth',2)
% % legend('2015', '2016', '2017', '2018')
% legend('2011', '2012', '2013', '2014','2015','2016', '2017', '2018')
% 
% figure(2)
% plot(oct_split(:,4,7),'r','LineWidth',2)
% axis([15 29 53000 70000])
% legend('2017')
% title('2017년 10월. 15, 22, 29일 일요일')

oct_sum = [];
oct_min = [];
oct_max = [];

for i=1:size(oct_split,3)
    oct_sum(end+1,1) = sum(oct_split(15:28,4,i));
    oct_min(end+1,1) = min(oct_split(15:28,5,i));
    oct_max(end+1,1) = max(oct_split(15:28,6,i));
end

figure(3)
plot(normalize(oct_sum),'k','LineWidth',2)
hold on
plot(normalize(oct_min),'b')
plot(normalize(oct_max),'r')
title('Normalized 2011-2018 Oct 15-28 Data')
legend('Electricity consumption', 'Minimum Celcius', 'Maximum Celcius')
line([1 8], [-1.07 1.428],'Color','Green','LineWidth',2)

figure(4)
plot(merged(:,4),'k')
axis([0 size(merged,1) 40000 100000])
hold on
for i=1:8
    line([i*365 i*365],[40000 100000],'Color','b')
end
title('2011-2018 Electricity peak demand (MW)')