N1_TPDO2 = canSignalTimetable(blfData, "N1_TPDO2");
signalTimetable2 = canSignalTimetable(blfData, "N1_TPDO1");
signalTimetable3 = canSignalTimetable(blfData, "N1_TPDO0");
%signalTimetable4 = canSignalTimetable(blfData, "N10_TPDO0");
N1_TPDO2.Time=N1_TPDO2.Time + binf.StartTime;
signalTimetable2.Time=signalTimetable2.Time + binf.StartTime;
signalTimetable3.Time=signalTimetable3.Time + binf.StartTime;


subplot(4, 1, 1)
plot(signalTimetable1.Time, N1_TPDO2.Current_Torque_Actual_Value/1000, "r")
title("{\itCurrent Torque Actual Value} Signal from {\itN1 TPDO2} Message", "FontWeight", "bold")
% xlabel("Timestamp")
ylabel("Torque")
subplot(4, 1, 2)
plot(signalTimetable2.Time, signalTimetable2.DC_link_circuit_voltage/10, "b")
title("{\itDC link circuit voltage} Signal from {\itN1 TPDO1} Message", "FontWeight", "bold")
% xlabel("Timestamp")
ylabel("Voltage")
subplot(4, 1, 3)
plot(signalTimetable1.Time, N1_TPDO2.Electrical_angle, "y")
title("{\itElectrical angle} Signal from {\itN1 TPDO2} Message", "FontWeight", "bold")
xlabel("Timestamp")
ylabel("Angle")
subplot(4, 1, 4)
plot(signalTimetable3.Time, signalTimetable3.Position_actual_value, "g")
title("{\itPosition Actual Value} Signal from {\itN1 TPDO0} Message", "FontWeight","bold")
xlabel("Timestamp")
ylabel("Postion")

%format compact
%summary(signalTimetable1)
