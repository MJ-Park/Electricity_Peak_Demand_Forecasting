clear; clc;

load_year = 2016;
load_month = 11;

tmp = [7495.9;
7475.6;
7352;
5945.5;
6620.3;
7361.1;
7402.2;
7206.6;
7128.4;
6847.6;
5582.1;
6021.2;
6787.7;
6776.8;
6876.5;
6783.2;
6683.4;
5521.7;
5849.5;
6735.2;
6990.6;
6788.5;
6830.9;
6557.2;
5501;
5804.1;
6703.8;
6362.6;
6871.1;
6894.9];

tmp = flipud(tmp);
load_date = strcat(num2str(load_year),num2str(load_month,'%02d'));

res = [];

for i=1 : size(tmp,1)
    res(end+1,1) = str2double(load_date)*100+i;
end

res = horzcat(res,tmp);

save(load_date,'res')