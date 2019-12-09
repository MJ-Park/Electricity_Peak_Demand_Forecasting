% merge data

clear; clc;

city_name = ["wonju", "suwon", "seoul", "incheon", "gwangju", "daejeon", "daegu", "busan"];
tmp = zeros(2922,2);
for i=1:size(city_name,2)
    try
        filename = city_name(1,i) + ".mat";
        load(filename)
        tmp = tmp+temp_low_high;
        %     temp(:,end+1:end+2) = temp_low_high;
    catch
        disp('error')
    end
end

temp_low_high = tmp/size(city_name,2);

save('temprature_merged.mat','temp_low_high');