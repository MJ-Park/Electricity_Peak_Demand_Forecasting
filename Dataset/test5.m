clear; clc;
load('weekday.mat')

tmp = weekday;
weekday = [];
for i=1:size(tmp,1)
    if tmp(i,2) >= 6 && tmp(i,2) <= 8
        weekday(end+1,:) = tmp(i,:);
    end
end

save('weekday_summer.mat')

% plot(weekday(:,4))
% plot(weekday(:,5))
% plot(normalize(weekday(:,4)),'k','LineWidth',2)
% hold on
% plot(normalize(weekday(:,5)),'r')
% 
% title('6월~8월 최대전력소요, 최저기온 정규화')
% legend('최대전력소요', '최저기온')

for i=1:size(weekday,1)
    
end

weekday(:,4) = weekday(:,4) * 0.00001;
weekday(:,5) = weekday(:,5) * 0.03;

for i=1:size(weekday,1)
    try
        if weekday(i,2) == 8 && weekday(i,3) == 31
            weekday(i,:) = [];
        end
    catch
    end
end

testing = weekday(456:end,4:5);
training = weekday(1:455,4:5);

% input = [];
% Target = [];
% 
% for i=1:size(training,1)-5
%     input(end+1,:) = training(i:i+4,1);
%     Target(end+1,:) = training(i+5,1);
% end
% 
% input = input';
% Target = Target';

save('data.mat')