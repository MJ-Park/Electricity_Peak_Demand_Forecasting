% http://epsis.kpx.or.kr/epsisnew/selectEkgeEpsMepGrid.do?menuId=040101
% First Step.

clear; clc;

peak_elec = csvread('peak_2011_2018.csv',1,0,[1 0 2907 3]);
peak_elec = flipud(peak_elec);

save('peak_demand.mat')