function OUTPUT_ARR = funcDeleteWeekend(INPUT_ARR)
    % INPUT_ARR (:,1) = Year
    % INPUT_ARR (:,2) = Month
    % INPUT_ARR (:,3) = Date
    % INPUT_ARR (:,4) = Day of the weerk (MON,TUE, ...)
    %                   MON(1) TUE(2) WED(3) THU(4) FRI(5) SAT(6) SUN(7)
    % INPUT_ARR (:,5~~) = Data
    
    year = INPUT_ARR (:,1);
    month = INPUT_ARR (:,2);
    date = INPUT_ARR (:,3);
    day = INPUT_ARR (:,4);   
    
    OUTPUT_ARR = [];
    
    for i=1:size(INPUT_ARR,1)
        if day(i,1) < 6
            OUTPUT_ARR(end+1,:) = INPUT_ARR(i,:);
        end
    end
end