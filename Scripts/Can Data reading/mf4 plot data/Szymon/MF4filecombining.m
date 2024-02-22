%% Made with help from chatGPT
clear all
%% Requires the Vehicle Network Toolbox
% Assuming you have the Vehicle Network Toolbox installed and added to MATLAB's path

% Prompt user to select multiple MF4 files
[fileNames, filePaths] = uigetfile('*.mf4', 'Select MF4 files to combine', 'MultiSelect', 'on');

% Check if the user selected at least two files
if ~iscell(fileNames) || numel(fileNames) < 2
    error('Please select at least two MF4 files to combine.');
end
% Initialize the CAN Database
[file,path] = uigetfile('*.dbc');
if isequal(file,0)
   disp('User selected Cancel');
else
   disp(['User selected ', fullfile(path,file)]);

end
canDB = canDatabase(fullfile(path,file));

% Initialize an empty time table to store the combined data
combinedData = timetable();
currentTimeTable = timetable();
% Loop through the selected files and read the data
for i = 1:numel(fileNames)
    currentFileName = fullfile(filePaths, fileNames{i});
    % Read data from the current MF4 file using the Vehicle Network Toolbox
    % You need to replace the following line with the appropriate function based on your data source.
    % For example, if your MF4 files contain CAN data, you would use "canDatabase" or "canMessage"
    mdfFinalize(currentFileName);
    mdfObj = mdf(currentFileName);
    canData = read(mdfObj, 8);
    canData.Time = canData.Time + mdfObj.InitialTimestamp - hours(4);
    msgTimetable = canFDMessageTimetable(canData, canDB);
    
    % Concatenate the current data with the combined data
    combinedData = [combinedData; msgTimetable];
end
TimeStamp = datestr(combinedData.Time(1));
signalTimetable = canSignalTimetable(combinedData);
% Save the combined data as a MAT file - (file is extremely bloated 
% just save the data you want from the workspace
%save([TimeStamp(1:11) 'CanData.mat'], 'signalTimetable', '-v7.3');

disp('Data from MF4 files combined and saved as a MAT file successfully.');



N1_TPDO3 = canSignalTimetable(combinedData, "N1_TPDO3"); 
N1_TPDO2 = canSignalTimetable(combinedData, "N1_TPDO2"); 
N1_TPDO1 = canSignalTimetable(combinedData, "N1_TPDO1");
N1_TPDO0 = canSignalTimetable(combinedData, "N1_TPDO0");
disp('node 1 processed')

N8_TPDO0 = canSignalTimetable(combinedData, "N8_TPDO0");
N8_TPDO1 = canSignalTimetable(combinedData, "N8_TPDO1");

disp('Data extracted')

