[maxValueCTAV, maxidxCTAV] = max(signalTimetable1.Current_Torque_Actual_Value);
[minValueCTAV, minidxCTAV] = min(signalTimetable1.Current_Torque_Actual_Value);
[maxValuePA, maxidxPA] = max(signalTimetable1.Phase_A_current);
[minValuePA, minidxPA] = min(signalTimetable1.Phase_A_current);
[maxValueDC, maxidxDC] = max(signalTimetable2.DC_link_circuit_voltage);
[minValueDC, minidxDC] = min(signalTimetable2.DC_link_circuit_voltage);
[maxValueEA, maxidxEA] = max(signalTimetable1.Electrical_angle);
[minValueEA, minidxEA] = min(signalTimetable1.Electrical_angle);


minmaxtable1 = ["Unit","Time", "Value", "";
               "Torque",string(signalTimetable1.Time(maxidxCTAV)), string(maxValueCTAV),"Max";
               "",string(signalTimetable1.Time(minidxCTAV)), string(minValueCTAV),"Min";
               "Voltage",string(signalTimetable2.Time(maxidxDC)), string(maxValueDC), "Max";
               "",string(signalTimetable2.Time(minidxDC)), string(minValueDC),"Min";
               "Angle",string(signalTimetable1.Time(maxidxEA)), string(maxValueEA), "Max"; 
               "",string(signalTimetable1.Time(minidxEA)), string(minValueEA),"Min";
               "Postion",string(signalTimetable1.Time(maxidxPA)), string(maxValuePA),"Max";
               "",string(signalTimetable1.Time(minidxPA)), string(minValuePA),"Min";];