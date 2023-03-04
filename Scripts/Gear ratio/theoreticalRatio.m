% Requires Mapping toolbox to run
clear;

[file,path] = uigetfile('*.geojson');
if isequal(file,0)
   disp('User selected Cancel');
else
   disp(['User selected ', fullfile(path,file)]);
   
end

GT = readgeotable(fullfile(path,file));

d = 27;

currfrontSproket = 12;
currbackSproket = 52;
currentGearRatio = currbackSproket/currfrontSproket;

newfrontSproket = 12;
newbackSproket = 72;
newGearRatio = newbackSproket/newfrontSproket;

RPM = GT.RPM_actual_;
% maxRPM = max(RPM);
% minRPM = min(RPM);

avgRPM = sum(RPM(2000:2500))/500;
RPMscale = (1:5000);
newRPMavg = avgRPM * newGearRatio / currentGearRatio;
newSpeed = (RPMscale ./ newGearRatio) .* (d * pi * 60/63360);
oldSpeed = (RPMscale ./ currentGearRatio) .* (d * pi * 60 /63360);


figure
plot(RPMscale, oldSpeed, 'r', RPMscale, newSpeed, 'b')
xlabel('RPM')
ylabel('Velocity (mph)')
title('Projected RPM gain')
legend(["New Ratio","Old Ratio"])
legend("Position",[0.13776,0.79391,0.24861,0.10675])


%figure


comp = 5000 / (newGearRatio / currentGearRatio);