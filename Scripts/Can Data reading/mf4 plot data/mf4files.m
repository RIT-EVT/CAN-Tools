clear;

[file,path] = uigetfile('*.MF4');
if isequal(file,0)
   disp('User selected Cancel');
else
   disp(['User selected ', fullfile(path,file)]);

end

mdfFinalize(fullfile(path,file));

mdfObj = mdf(fullfile(path,file));
canDB = canDatabase("DEV1_db.dbc");
channelList(mdfObj, "CAN_DataFrame", "ExactMatch", true);

canData = read(mdfObj, 8);
canData.Time = canData.Time + mdfObj.InitialTimestamp; %- hours(4);

msgTimetable = canFDMessageTimetable(canData, canDB);

signalTimetable = canSignalTimetable(msgTimetable);
N1_TPDO2 = canSignalTimetable(msgTimetable, "N1_TPDO2"); 
N1_TPDO1 = canSignalTimetable(msgTimetable, "N1_TPDO1");
N1_TPDO0 = canSignalTimetable(msgTimetable, "N1_TPDO0");
N10_TPDO0 = canSignalTimetable(msgTimetable, "N10_TPDO0");
N10_TPDO1 = canSignalTimetable(msgTimetable, "N10_TPDO1");
N10_TPDO2 = canSignalTimetable(msgTimetable, "N10_TPDO2");
N10_TPDO3 = canSignalTimetable(msgTimetable, "N10_TPDO3");





