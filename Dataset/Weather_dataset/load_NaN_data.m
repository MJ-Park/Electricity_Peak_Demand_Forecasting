% find_missing_daa

clear; clc;

tmp = importdata('gwangju_high.csv');   % �ùٸ���
a = isnan(tmp);

tmp = importdata('incheon_high.csv');   % �����Ȱ�
b = isnan(tmp);

for i=1:size(a,1)
    for j=1:size(a,2)
        if a(i,j) ~= b(i,j)
            fprintf("%d %d", i,j);
        end
    end
end