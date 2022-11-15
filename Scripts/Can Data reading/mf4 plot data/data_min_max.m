if ~isempty(N1_TPDO2) 
    [maxValueCTAV, maxidxCTAV] = max(N1_TPDO2.Current_Torque_Actual_Value);
    [minValueCTAV, minidxCTAV] = min(N1_TPDO2.Current_Torque_Actual_Value);
    [maxValuePA, maxidxPA] = max(N1_TPDO2.Phase_A_current);
    [minValuePA, minidxPA] = min(N1_TPDO2.Phase_A_current);
    [maxValueEA, maxidxEA] = max(N1_TPDO2.Electrical_angle);
    [minValueEA, minidxEA] = min(N1_TPDO2.Electrical_angle);
else 
    maxValueCTAV = 0; 
    maxidxCTAV = 0;
    minValueCTAV = 0; 
    minidxCTAV = 0;
    maxValuePA = 0;
    maxidxPA = 0;
    minValuePA = 0; 
    minidxPA = 0;
    maxValueEA = 0; 
    maxidxEA = 0;
    minValueEA = 0;
    minidxEA = 0;
end
if ~isempty(N1_TPDO1)
    [maxValueDC, maxidxDC] = max(N1_TPDO1.DC_link_circuit_voltage);
    [minValueDC, minidxDC] = min(N1_TPDO1.DC_link_circuit_voltage);
else
    maxValueDC = 0; 
    maxidxDC = 0;
    minValueDC = 0; 
    minidxDC = 0;
end

if ~isempty(N10_TPDO0)
[maxValueTemp1, maxidTemp1] = max(N10_TPDO0.Temp_1);
[minValueTemp1, minidxTemp1] = min(N10_TPDO0.Temp_1);
[maxValueTemp2, maxidTemp2] = max(N10_TPDO0.Temp_2);
[minValueTemp2, minidxTemp2] = min(N10_TPDO0.Temp_2);
else
maxValueTemp1 = 0; 
maxidTemp1 = 0;
minValueTemp1 = 0; 
minidxTemp1 = 0;
maxValueTemp2 = 0; 
maxidTemp2 = 0;
minValueTemp2 = 0; 
minidxTemp2 = 0;
end

if ~isempty(N10_TPDO1)
[maxValueTemp3, maxidTemp3] = max(N10_TPDO1.Temp_3);
[minValueTemp3, minidxTemp3] = min(N10_TPDO1.Temp_3);
[maxValueTemp4, maxidTemp4] = max(N10_TPDO1.Temp_4);
[minValueTemp4, minidxTemp4] = min(N10_TPDO1.Temp_4);
else 
maxValueTemp3 = 0; 
maxidTemp3 = 0;
minValueTemp3 = 0; 
minidxTemp3 = 0;
maxValueTemp4 = 0; 
maxidTemp4 = 0;
minValueTemp4 = 0; 
minidxTemp4 = 0;
end

if ~isempty(N10_TPDO2)
[maxValueVolt1, maxidVolt1] = max(N10_TPDO2.Volt_1);
[minValueVolt1, minidxVolt1] = min(N10_TPDO2.Volt_1);
[maxValueVolt2, maxidVolt2] = max(N10_TPDO2.Volt_2);
[minValueVolt2, minidxVolt2] = min(N10_TPDO2.Volt_2);
else
maxValueVolt1 = 0; 
maxidVolt1 = 0;
minValueVolt1 = 0; 
minidxVolt1 = 0;
maxValueVolt2 = 0; 
maxidVolt2 = 0;
minValueVolt2 = 0; 
minidxVolt2 = 0; 
end
if ~isempty(N10_TPDO3)
[maxValueVolt3, maxidVolt3] = max(N10_TPDO3.Volt_3);
[minValueVolt3, minidxVolt3] = min(N10_TPDO3.Volt_3);
[maxValueVolt4, maxidVolt4] = max(N10_TPDO3.Volt_4);
[minValueVolt4, minidxVolt4] = min(N10_TPDO3.Volt_4);
else
maxValueVolt3 = 0;
maxidVolt3 = 0;
minValueVolt3 = 0; 
minidxVolt3 = 0;
maxValueVolt4 = 0;
maxidVolt4 = 0;
minValueVolt4 = 0; 
minidxVolt4 = 0;
end
minmaxtable1 = ["Unit","Time", "Value", "";
               "Torque",string(N1_TPDO2.Time(maxidxCTAV)), string(maxValueCTAV),"Max";
               "",string(N1_TPDO2.Time(minidxCTAV)), string(minValueCTAV),"Min";
               "Voltage",string(N1_TPDO1.Time(maxidxDC)), string(maxValueDC), "Max";
               "",string(N1_TPDO1.Time(minidxDC)), string(minValueDC),"Min";
               "Angle",string(N1_TPDO2.Time(maxidxEA)), string(maxValueEA), "Max"; 
               "",string(N1_TPDO2.Time(minidxEA)), string(minValueEA),"Min";
               "Postion",string(N1_TPDO2.Time(maxidxPA)), string(maxValuePA),"Max";
               "",string(N1_TPDO2.Time(minidxPA)), string(minValuePA),"Min";];
minmaxtable2 = ["Unit","Time", "Value", "";
                "Fahrenheit", string(N10_TPDO0.Time(maxidTemp1)), string(maxValueTemp1/1000), "Max";
                "Fahrenheit", string(N10_TPDO0.Time(minidxTemp1)), string(minValueTemp1/1000), "Min";
                "Fahrenheit", string(N10_TPDO0.Time(maxidTemp2)), string(maxValueTemp2/1000), "Max";
                "Fahrenheit", string(N10_TPDO0.Time(minidxTemp2)), string(minValueTemp2/1000), "Min";
                "Fahrenheit", string(N10_TPDO0.Time(maxidTemp3)), string(maxValueTemp3/1000), "Max";
                "Fahrenheit", string(N10_TPDO0.Time(minidxTemp3)), string(minValueTemp3/1000), "Min";
                "Fahrenheit", string(N10_TPDO0.Time(maxidTemp4)), string(maxValueTemp4/1000), "Max";
                "Fahrenheit", string(N10_TPDO0.Time(minidxTemp4)), string(minValueTemp4/1000), "Min";
               ];
minmaxtable3 = ["Unit","Time", "Value", "";
               "Volts", string(N10_TPDO2.Time(maxidVolt1)), string(maxValueVolt1/1000), "Max";
               "Volts", string(N10_TPDO2.Time(minidxVolt1)), string(minValueVolt1/1000), "Min";
               "Volts", string(N10_TPDO2.Time(maxidVolt2)), string(maxValueVolt2/1000), "Max";
               "Volts", string(N10_TPDO2.Time(minidxVolt2)), string(minValueVolt2/1000), "Min";
               "Volts", string(N10_TPDO3.Time(maxidVolt3)), string(maxValueVolt3/1000), "Max";
               "Volts", string(N10_TPDO3.Time(minidxVolt3)), string(minValueVolt3/1000), "Min";
               "Volts", string(N10_TPDO3.Time(maxidVolt4)), string(maxValueVolt4/1000), "Max";
               "Volts", string(N10_TPDO3.Time(minidxVolt4)), string(minValueVolt4/1000), "Min";
               ];

