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
originalSpeed = (RPMscale ./ currentGearRatio) .* (d * pi * 60 /63360);
example1speed = (RPMscale ./ 5) .* (d * pi * 60 /63360);
example2speed = (RPMscale ./ 3.5) .* (d * pi * 60/63360);
example3speed = (RPMscale ./ 9) .* (d * pi * 60/63360);

figure
plot(RPMscale, originalSpeed, 'r', RPMscale, newSpeed, 'b', RPMscale, example1speed, 'g', RPMscale, example2speed, 'c', RPMscale, example3speed, "magenta")
xlabel('RPM')
ylabel('Velocity (mph)')
title('Projected RPM gain')
legend(["Original Ratio","New Ratio","Example 1", "Example 2", "Example 3"])
legend("Position",[0.13776,0.79391,0.24861,0.10675])


%figure


comp = originalSpeed(5000)/newSpeed(5000);
