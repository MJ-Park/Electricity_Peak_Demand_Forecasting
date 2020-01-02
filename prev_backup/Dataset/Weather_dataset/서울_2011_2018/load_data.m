% https://data.kma.go.kr/data/grnd/selectAsosList.do?pgmNo=34
% Second step.

clear; clc;

seoul_temp = csvread('2011.csv',1,0,[1 0 366 5]);
% seoul_temp = [seoul_temp(:,6) seoul_temp(:,8)];