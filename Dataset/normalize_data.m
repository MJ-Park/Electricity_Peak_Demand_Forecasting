% Merge Weather dataset and Electricity peak demand.
% With GDP, Normalize -> Normalize.mat

clear; clc;

load('peak_demand.mat')
load('temperature_merged.mat')

merged = horzcat(peak_elec,temp_low_high);

save('merged_data.mat','merged')

normalized_data = merged;

gdp_2011 = 1332681;
gdp_2012 = 1377457;
gdp_2013 = 1429445;
gdp_2014 = 1486079;
gdp_2015 = 1564124;
gdp_2016 = 1641786;
gdp_2017 = 1730399;
gdp_2018 = 1782269;

for i=1:size(merged,1)
    if normalized_data(i,1) == 2011
        normalized_data(i,4) = normalized_data(i,4) * gdp_2018 / gdp_2011;
    elseif normalized_data(i,1) == 2012
        normalized_data(i,4) = normalized_data(i,4) * gdp_2018 / gdp_2012;
    elseif normalized_data(i,1) == 2013
        normalized_data(i,4) = normalized_data(i,4) * gdp_2018 / gdp_2013;
    elseif normalized_data(i,1) == 2014
        normalized_data(i,4) =normalized_data(i,4) * gdp_2018 / gdp_2014;
    elseif normalized_data(i,1) == 2015
        normalized_data(i,4) = normalized_data(i,4) * gdp_2018 / gdp_2015;
    elseif normalized_data(i,1) == 2016
        normalized_data(i,4) =normalized_data(i,4) * gdp_2018 / gdp_2016;
    elseif normalized_data(i,1) == 2017
        normalized_data(i,4) =normalized_data(i,4) * gdp_2018 / gdp_2017;
    elseif normalized_data(i,1) == 2018
        normalized_data(i,4) =normalized_data(i,4) * gdp_2018 / gdp_2018;
    end
end

save('normalized_data.mat', 'normalized_data')