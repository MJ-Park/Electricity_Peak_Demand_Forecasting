function RES = tempRatio(TEMP, RATIO)
    RES = TEMP(:,5:6);
    RES = RES * RATIO;
end