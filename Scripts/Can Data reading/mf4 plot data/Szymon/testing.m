%testing by james
close all
clear
clc

%fanless run
load('N8_TPDO0.mat');
%puts everything in C
N8_TPDO0.Temp_Radiator_Fan_1 = N8_TPDO0.Temp_Radiator_Fan_1/100;
N8_TPDO0.Temp_Between_Motor_Inverter = N8_TPDO0.Temp_Between_Motor_Inverter/100;
radTemp = N8_TPDO0.Temp_Radiator_Fan_1;
tempBetween = N8_TPDO0.Temp_Between_Motor_Inverter;

%takes time into a usable min format
hours = hour(N8_TPDO0.Time)-hour(N8_TPDO0.Time(1));
min = minute(N8_TPDO0.Time)-minute(N8_TPDO0.Time(1));
sec = second(N8_TPDO0.Time)-second(N8_TPDO0.Time(1));
t=(hours)*3600+min*60+sec;
t = t/60;

tempRad = N8_TPDO0.Temp_Radiator_Fan_1;

figure(2)
plot(t,tempRad,'o', 'MarkerSize', 1, 'Color', "blue")
hold on
plot(t,tempBetween,'o', 'MarkerSize', 1, 'Color', "red")

ylim([0, 100]);

%toss any outliers
i = 2;
while i<length(tempRad)
    if abs(tempRad(i) - tempRad(i-1)) > 10
        if t(i)-t(i-1)>2
            i = i + 1;
        else
            tempRad = [tempRad(1:i-1); tempRad(i+1:end)];
            t = [t(1:i-1); t(i+1:end)];
        end
    else
        i = i + 1;
    end
end

%toss any points to close together
i = 2;
while i < length(t)
    if t(i) - t(i-1) < 0.25
        t = [t(1:i-1); t(i+1:end)];
        tempRad = [tempRad(1:i-1); tempRad(i+1:end)];
    else
        i = i + 1;
    end
end


%breaks them into runs
time = [];
temp = [];
col = 1;
start = 1;
len = 0;

for n = 3:size(t, 1)
    if t(n) - t(n-1) > 5
        len = n - start;
        time(1:len, col) = t(start:n-1);
        temp(1:len, col) = tempRad(start:n-1);
        col = col + 1;
        start = n;
    end
end

% Handle the last segment outside the loop
len = size(t, 1) - start + 1;
time(1:len, col) = t(start:n);
temp(1:len, col) = tempRad(start:n);

i = 1;
val = 0;
while i < size(time,2) + 1
    for k = 2:size(time,1)
        if ~time(k,i)>0
            val = k;
            break;
        end
    end
    if val>0 && time(val-1,i)-time(1,i)<5
        time(:, i) = [];
        temp(:,i) = [];

    else
        i = i + 1;
    end
    val = 0;

end

for i = 1:1:size(time,2)
   time(:,i)=time(:,i)-time(1,i);
   for l = size(time,1):-1:0
        if(time(l,i)<0)
            time(l,i)=0;
        else
            break;
        end
   end
end


%tc is ambient and tmax is tmax recorded
tmax = max(tempRad);
tc = 27.6200000000000;

figure(1)

colors = ["red", "yellow", "green", "blue", "black"];

for i = 1:size(time, 2)
    colorIndex = mod(i, length(colors)) +1;
    plot(time(:, i), temp(:, i), 'o', 'MarkerSize', 1, 'Color', colors(colorIndex));
    hold on
end

yline(tc,'--',"tc")
yline(tmax,'--','tmax')
ylim([0, 100]);
xlim([0,200])



r = 0;
for i = 1:1:size(time,2)
    % Calculate derivative to get heat transfer rate
    dTdt = diff(temp(:,i))./ diff(time(:,i));
    % Integrate to get total heat transfer 
    for w=1:length(dTdt)
        if isnan(dTdt(w))
            break;
        end
        r=w;
    end

    totalHeat = trapz(time(1:r,i), dTdt(1:r));
    fprintf('Run %d: Total Heat Transfer (J): %s\n', i, num2str(totalHeat));
    r = 0;
end
