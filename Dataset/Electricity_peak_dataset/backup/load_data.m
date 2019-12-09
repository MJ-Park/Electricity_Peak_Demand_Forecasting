clear; clc;

%% INPUT year
start_year = 2013;
end_year = 2018;

supply_peak = [];
error_list = [];
for load_year=start_year:end_year
    for load_month=1:12
        load_date = strcat(num2str(load_year),num2str(load_month,'%02d'));
        try
            filename = "supply_"+num2str(load_year)+num2str(load_month,'%02d')+'.xls';
            load_peak_data = readtable(filename,'Range','F2:F34');
            
            load_peak_data = cell2mat(table2cell(load_peak_data));
            load_peak_data(:,2) = [];
            % load_peak_data = erase(load_peak_data,',');
            load_peak_data = str2num(load_peak_data);
            load_peak_data = flipud(load_peak_data);
            
            load_day = (1:size(load_peak_data,1))';
            load_peak_date = str2num(strcat(load_date,num2str(load_day,'%02d')));
            res = horzcat(load_peak_date,load_peak_data);
            
            supply_peak = vertcat(supply_peak,res);
            
            save(load_date,'res')
        catch
            fprintf('%s load error', load_date)
            error_list(end+1,:) = str2num(load_date);
        end
    end
end
%% SAVE