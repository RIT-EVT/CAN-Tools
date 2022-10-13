%% Acquire Temperature Data from a Thermocouple
%
% This example shows how to read in data from thermocouples using NI
% devices that support thermocouple measurements using the Session based
% interface.
%
% Copyright 2010-2014 The MathWorks, Inc.
close all
clear
%%
test_date = "10/10/22"
test_description = "First test with the voltage set up. There is the two channels with the voltage connected to the test board with the channel 0 (Supply voltage to the divider) and channel 1 (Divided voltage). These are connected to the NI Daq"
test_description = "This has the thermistor that will be used on the actual TMS board"
test_description3 = "Then there's two thermocouple also connected to the NI Daq"
test_description4 = "There is another thermistor connected directly to the thermometer."
test_description5 = "The tests LJ ran the temperatures were off about 5 degrees even though the water was boiling at 100 degrees"
test_description6 = "This is set up with the hot plate and the pan."

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
addAnalogInputChannel(s,'cDAQ1Mod5',0, 'Thermocouple'); % TC 1
addAnalogInputChannel(s,'cDAQ1Mod5',1, 'Thermocouple'); % TC 2
% addAnalogInputChannel(s,'cDAQ1Mod5',2, 'Thermocouple');
addAnalogInputChannel(s,'cDAQ1Mod1',0, 'Voltage'); % Power Supply 3V3 rail
addAnalogInputChannel(s,'cDAQ1Mod1',1, 'Voltage'); % Thermistor 1 control

addAnalogInputChannel(s,'cDAQ1Mod8',0, 'Voltage'); %This is for the TMS 3.3 volt rail
addAnalogInputChannel(s,'cDAQ1Mod8',1, 'Voltage'); % TempSense1
addAnalogInputChannel(s,'cDAQ1Mod8',2, 'Voltage'); % MuxOut


s.Rate = 14 % Sample Rate   
s.DurationInSeconds = 30; % Test Duration
%% Configure Channel Properties
% Many properties are configured on channels individually.  You can access
% channels through the |Channels| property, and see a list of properties
% and possible values by using the |set| command.
tc1 = s.Channels(1); 
set(tc1)   
tc2 = s.Channels(2);
set(tc2)

%% 
% In this example, set the thermocouple type to K and units to Kelvin. Make
% sure you match the thermocouple type to your sensor configuration.
tc1.ThermocoupleType = 'K';  
tc1.Units = 'Celsius';  
tc2.ThermocoupleType = 'K';  
tc2.Units = 'Celsius';  

%%
% For a quick summary of the channel type
tc1

%% Get the CAN Database
cd ../Databases/
db = canDatabase("TMS_NODE2.dbc")

%% Start the CAN Channel
canch = canChannel("Vector", "VN1610 1", 1);
canch.Database = 
start(canch);

%% Start TMS
NMT_Op = canMessage(0,false,2);
NMT_Op.Data = ([01 00]);
% NMT_Op.Remote = false; % Possibly unneccessary

transmit(canch,NMT_Op);


%% Start the Acquisition
% Use the |startForeground| command to start the acquisition.  
 [data,time] = s.startForeground();

%% Get all CAN Data
rxData = receive(canch, Inf, "OutputFormat", "timetable");

%% Stop the Channel
stop(canch);

%% Plot Data from NI daq
plot(time, data)
ylim([10,110])
xlabel('Time (secs)');
ylabel('Temperature (Celsius)');