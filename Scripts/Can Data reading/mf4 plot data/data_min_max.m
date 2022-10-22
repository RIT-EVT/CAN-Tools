[maxValueCTAV, maxidxCTAV] = max(signalTimetable1.Current_Torque_Actual_Value);
[minValueCTAV, minidxCTAV] = min(signalTimetable1.Current_Torque_Actual_Value);
[maxValuePA, maxidxPA] = max(signalTimetable1.Phase_A_current);
[minValuePA, minidxPA] = min(signalTimetable1.Phase_A_current);
[maxValueDC, maxidxDC] = max(signalTimetable2.DC_link_circuit_voltage);
[minValueDC, minidxDC] = min(signalTimetable2.DC_link_circuit_voltage);
[maxValueEA, maxidxEA] = max(signalTimetable1.Electrical_angle);
[minValueEA, minidxEA] = min(signalTimetable1.Electrical_angle);

signalTimetable1.Time(maxidxCTAV)

minmaxtable1 = ["","Time", "Value", "Unit";
               "max",string(signalTimetable1.Time(maxidxCTAV)), string(maxValueCTAV),"Torque";
               "min",string(signalTimetable1.Time(minidxCTAV)), string(minValueCTAV),"";
               "max",string(signalTimetable2.Time(maxidxDC)), string(maxValueDC), "Voltage";
               "min",string(signalTimetable2.Time(minidxDC)), string(minValueDC),"";
               "max",string(signalTimetable1.Time(maxidxEA)), string(maxValueEA), "Angle"; 
               "min",string(signalTimetable1.Time(minidxEA)), string(minValueEA),"";
               "max",string(signalTimetable1.Time(maxidxPA)), string(maxValuePA),"Postion";
               "min",string(signalTimetable1.Time(minidxPA)), string(minValuePA),"";

];