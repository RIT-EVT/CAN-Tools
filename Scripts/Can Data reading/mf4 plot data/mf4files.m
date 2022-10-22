mdfFinalize("00000001.MF4");

mdfObj = mdf("00000001.MF4");
canDB = canDatabase("CandbDev1.dbc");
channelList(mdfObj, "CAN_DataFrame", "ExactMatch", true);

canData = read(mdfObj, 8);
canData.Time = canData.Time + mdfObj.InitialTimestamp - hours(4);

msgTimetable = canFDMessageTimetable(canData, canDB);

signalTimetable = canSignalTimetable(msgTimetable);
signalTimetable1 = canSignalTimetable(msgTimetable, "N1_TPDO2");
signalTimetable2 = canSignalTimetable(msgTimetable, "N1_TPDO1");
signalTimetable3 = canSignalTimetable(msgTimetable, "N1_TPDO0");
signalTimetable4 = canSignalTimetable(msgTimetable, "N10_TPDO0");
signalTimetable5 = canSignalTimetable(msgTimetable, "N10_TPDO1");
signalTimetable6 = canSignalTimetable(msgTimetable, "N10_TPDO2");
signalTimetable7 = canSignalTimetable(msgTimetable, "N10_TPDO3");





