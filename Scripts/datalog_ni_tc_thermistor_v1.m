%% Acquire Temperature Data from a Thermocouple
%
% This example shows how to read in data from thermocouples using NI
% devices that support thermocouple measurements using the Session based
% interface.
%
% Copyright 2010-2014 The MathWorks, Inc.
close all

%% Discover Devices that Support Thermocouples 
% To discover a device that supports Thermocouples, click the name of the
% device in the list in the Command window, or access the device in the
% array returned by |daq.getDevices| command. This example uses a NI 9213
% device.   This is a 16 channel thermocouple module and is device 6 in our
% system.
devices = daq.getDevices
devices(3)

%% Add a Thermocouple Channel
% Create a session, and add an analog input channel with |Thermocouple|
% measurement type and change the |Rate| to four scans per second.
%
s = daq.createSession('ni');
% addAnalogInputChannel(s,'cDAQ1Mod5',0, 'Thermocouple');
% addAnalogInputChannel(s,'cDAQ1Mod5',1, 'Thermocouple');
% addAnalogInputChannel(s,'cDAQ1Mod5',2, 'Thermocouple');
% 
addAnalogInputChannel(s,'cDAQ1Mod1',0, 'Voltage');
addAnalogInputChannel(s,'cDAQ1Mod1',1, 'Voltage');

addAnalogInputChannel(s,'cDAQ1Mod8',0, 'Voltage'); %This is for the TMS 3.3 volt rail
addAnalogInputChannel(s,'cDAQ1Mod8',1, 'Voltage'); % TempSense1
addAnalogInputChannel(s,'cDAQ1Mod8',2, 'Voltage'); % MuxOut

% s.Rate = 14
s.Rate = 500
s.DurationInSeconds = 1000;
%% Configure Channel Properties
% Many properties are configured on channels individually.  You can access
% channels through the |Channels| property, and see a list of properties
% and possible values by using the |set| command.
% tc1 = s.Channels(1); 
% set(tc1)   
% tc2 = s.Channels(2);
% set(tc2)

%% 
% In this example, set the thermocouple type to K and units to Kelvin. Make
% sure you match the thermocouple type to your sensor configuration.
% tc1.ThermocoupleType = 'K';  
% tc1.Units = 'Celsius';  
% tc2.ThermocoupleType = 'K';  
% tc2.Units = 'Celsius';  

%%
% For a quick summary of the channel type
% tc1

%% Start the Acquisition
% Use the |startForeground| command to start the acquisition.  
[data,time] = s.startForeground();
% data = read(s,seconds(10),"OutputFormat","Matrix");

plot(time, data)
% ylim([10,110])
xlabel('Time (secs)');
ylabel('Temperature (Celsius)');

cd ../Logs
save test_10_20_2022_tms_no_buffer_1000_sec_2
cd ../Scripts
clear all
