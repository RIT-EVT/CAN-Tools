mdfFinalize("00000001.MF4");

mdfObj = mdf("00000001.MF4");
canDB = canDatabase("CandbDev1.dbc");
channelList(mdfObj, "CAN_DataFrame", "ExactMatch", true);

canData = read(mdfObj, 8);
canData.Time = canData.Time + mdfObj.InitialTimestamp - hours(4);

msgTimetable = canFDMessageTimetable(canData, canDB);
%signalTimetable1 = canSignalTimetable(blfData, "N1_TPDO2");
%signalTimetable2 = canSignalTimetable(blfData, "N1_TPDO1");
%signalTimetable3 = canSignalTimetable(blfData, "N1_TPDO0");
signalTimetable = canSignalTimetable(msgTimetable);
signalTimetable4 = canSignalTimetable(msgTimetable, "N10_TPDO0");
%signalTimetable1.Time=signalTimetable1.Time + binf.StartTime;
%signalTimetable2.Time=signalTimetable2.Time + binf.StartTime;
%signalTimetable3.Time=signalTimetable3.Time + binf.StartTime;

subplot(2, 1, 1)
plot(signalTimetable4.Time, signalTimetable4.Temp_1/1000, "r")
title("{\itTemp 1} Signal from {\itN10 TPDO0} Message", "FontWeight", "bold")
% xlabel("Timestamp")
ylabel("Temp")

subplot(2, 1, 2)
plot(signalTimetable4.Time, signalTimetable4.Temp_2/1000, "b")
title("{\itTemp 2} Signal from {\itN10 TPDO0} Message", "FontWeight", "bold")
% xlabel("Timestamp")
ylabel("Temp")