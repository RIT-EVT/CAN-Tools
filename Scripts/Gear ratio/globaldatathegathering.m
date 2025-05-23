% Requires Mapping toolbox to run
clear;

[file,path] = uigetfile('*.geojson');
if isequal(file,0)
   disp('User selected Cancel');
else
   disp(['User selected ', fullfile(path,file)]);
   
end

GT = readgeotable(fullfile(path,file));
% geoplot(GT)   // Plots the path on a map
d = 27;

figure("Name","Motor Speed vs actual speed")
hold on
plot((GT.RPM_actual_ * d * pi * 60)/63360)
plot(GT.speed)

hold off
figure("Name","Motor RPM")
plot(GT.RPM_actual_)

Gearratio = sum((GT.RPM_actual_ * d * pi * 60)/63360)/sum(GT.speed);

figure("Name", "Gear Ratio")
vectGear = ((GT.RPM_actual_ * d * pi * 60)/63360)./GT.speed;
plot(vectGear)

maxmph = max(GT.speed);
minmph = min(GT.speed);
maxRPM = max(GT.RPM_actual_);
minRPM = min(GT.RPM_actual_);
physicalgearratio = 52/12;

