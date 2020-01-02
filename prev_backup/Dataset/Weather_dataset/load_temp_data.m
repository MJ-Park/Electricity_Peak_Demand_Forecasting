% https://data.kma.go.kr/data/grnd/selectAsosList.do?pgmNo=34
% Second step.

clear; clc;

location = "daegu";

filename = location +'_low.csv';
temp = importdata(filename);
low_res = [];
for i=1:size(temp,1)
    low_res(end+1:end+31,1) = temp(i,:);
end
low_res(isnan(low_res))=[];

% low_res(~isfinite(low_res))=[];

% Seoul High 데이터 하나 누락 -> 20171012 = 13.8도
% Incheon 데이터 하나씩 누락 -> 20111016 12.9 / 19.3
% Daegu high 하나 누락 -> 20130930 = 25.0도
% (https://rp5.ru/%EB%8C%80%EA%B5%AC%EA%B4%91%EC%97%AD%EC%8B%9C%EC%9D%98_%EB%82%A0%EC%94%A8_%EC%95%84%EC%B9%B4%EC%9D%B4%EB%B8%8C)

filename = location +'_high.csv';
temp_2 = importdata(filename);
high_res = [];
for i=1:size(temp_2,1)
    high_res(end+1:end+31,1) = temp_2(i,:);
end
high_res(isnan(high_res))=[];
% high_res(~isfinite(high_res))=[];

temp_low_high = horzcat(low_res,high_res);
save_filename = location + '.mat';
save(save_filename,'temp_low_high')