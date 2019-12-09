% merge data

clear; clc;

tmp = zeros(2922,2);
try
%     filename = city_name(1,i) + ".mat";
    load('seoul.mat')
    seoul = temp_low_high * 0.43;
    load('busan.mat')
    busan = temp_low_high * 0.18;
    load('daegu.mat')
    daegu = temp_low_high * 0.13;
    load('daejeon.mat')
    daejeon = temp_low_high * 0.14;
    load('gwangju.mat')
    gwangju = temp_low_high * 0.12;
    %     temp(:,end+1:end+2) = temp_low_high;
catch
    disp('error')
end

temp_low_high = seoul + busan + daegu + daejeon + gwangju;
% temp_low_high = tmp/size(city_name,2);

save('temprature_merged.mat','temp_low_high');