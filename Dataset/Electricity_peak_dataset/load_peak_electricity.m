% http://epsis.kpx.or.kr/epsisnew/selectEkgeEpsMepGrid.do?menuId=040101
% First Step.

%% Import Electricity peak demand dataset

clear; clc;

peak_elec = csvread('peak_2011_2018.csv',1,0,[1 0 2922 3]);
peak_elec = flipud(peak_elec);

save('peak_demand.mat')

%%

weekend = []; weekday = [];

for i=1:size(peak_elec,1)
    if (mod(i,7) == 1) || (mod(i,7) == 2)
        weekend(end+1,:) = peak_elec(i,:);
    else
        weekday(end+1,:) = peak_elec(i,:);
    end
end

save('weekday.mat', 'weekday')
save('weekend.mat', 'weekend')

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

save('data.mat')
