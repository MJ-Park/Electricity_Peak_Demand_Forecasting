clear; clc;

load('merged_data.mat')

weekend = [];
weekday = [];

for i=1:size(merged,1)
    if (mod(i,7) == 1) || (mod(i,7) == 2)
        weekend(end+1,:) = merged(i,:);
    else
        weekday(end+1,:) = merged(i,:);
    end
end

save('weekday.mat', 'weekday')
save('weekend.mat', 'weekend')
