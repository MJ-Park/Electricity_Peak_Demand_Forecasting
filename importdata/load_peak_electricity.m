% http://epsis.kpx.or.kr/epsisnew/selectEkgeEpsMepGrid.do?menuId=040101
% First Step.

%% Import Electricity peak demand dataset

clear; clc;

peak_elec = csvread('peak_2011_2018.csv',1,0,[1 0 2922 3]);
peak_elec = flipud(peak_elec);

save('peak_demand.mat')

%% Choose only 6/01 ~ 8/30 dataset

weekend = []; weekday = [];

for i=1:size(peak_elec,1)
    if peak_elec(i,2) >= 6 && peak_elec(i,2) <= 8
        if peak_elec(i,2) == 8 && peak_elec(i,3) == 31
            
        elseif (mod(i,7) == 1) || (mod(i,7) == 2)
            weekend(end+1,:) = peak_elec(i,:);
        else
            weekday(end+1,:) = peak_elec(i,:);
        end
    end
end

save('summer_weekday.mat', 'weekday')
save('summer_weekend.mat', 'weekend')

for i=1:size(weekday,1)
    try
        if weekday(i,2) == 8 && weekday(i,3) == 31
            weekday(i,:) = [];
        end
    catch
        disp('Import error!!')
    end
end
        % pre-allocation add
testing = weekday(456:end,4);
training = weekday(1:455,4);

save('training_data.mat', 'testing', 'training')

filelist = dir;
folder = filelist(1,:).folder;
folder = erase(folder,'\importdata');
save([folder '\training_data.mat'],'training')
save([folder,'\testing_data.mat'],'testing')
