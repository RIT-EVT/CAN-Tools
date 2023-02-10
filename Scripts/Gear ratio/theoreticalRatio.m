% Requires Mapping toolbox to run
clear;

[file,path] = uigetfile('*.geojson');
if isequal(file,0)
   disp('User selected Cancel');
else
   disp(['User selected ', fullfile(path,file)]);
   
end

GT = readgeotable(fullfile(path,file));

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
newRPMscale = RPMscale  .* newGearRatio ./ currentGearRatio;

hold on;
plot(RPMscale)
plot(newRPMscale)
