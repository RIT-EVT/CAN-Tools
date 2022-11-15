clear;
mdfFinalize("00000003.MF4");

mdfObj = mdf("00000003.MF4");
canDB = canDatabase("CandbDev1.dbc");
channelList(mdfObj, "CAN_DataFrame", "ExactMatch", true);

canData = read(mdfObj, 8);
canData.Time = canData.Time + mdfObj.InitialTimestamp - hours(4);

msgTimetable = canFDMessageTimetable(canData, canDB);

signalTimetable = canSignalTimetable(msgTimetable);
N1_TPDO2 = canSignalTimetable(msgTimetable, "N1_TPDO2"); 
N1_TPDO1 = canSignalTimetable(msgTimetable, "N1_TPDO1");
N1_TPDO0 = canSignalTimetable(msgTimetable, "N1_TPDO0");
N10_TPDO0 = canSignalTimetable(msgTimetable, "N10_TPDO0");
N10_TPDO1 = canSignalTimetable(msgTimetable, "N10_TPDO1");
N10_TPDO2 = canSignalTimetable(msgTimetable, "N10_TPDO2");
N10_TPDO3 = canSignalTimetable(msgTimetable, "N10_TPDO3");





