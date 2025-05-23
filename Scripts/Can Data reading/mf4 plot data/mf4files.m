clear;

[file,path] = uigetfile({'*.mat';'*.MF4'});
[a,b,ext] = fileparts(fullfile(path, file));
if isequal(file,0)
   disp('User selected Cancel');
else
   disp(['User selected ', fullfile(path,file,ext)]);

end

switch ext
    case '.MF4'
        mdfFinalize(fullfile(path,file));

        mdfObj = mdf(fullfile(path,file));

        [file,path] = uigetfile('*.dbc');
        if isequal(file,0)
            disp('User selected Cancel');
        else
        disp(['User selected ', fullfile(path,file)]);

        end

        canDB = canDatabase(fullfile(path,file));
        channelList(mdfObj, "CAN_DataFrame", "ExactMatch", true);

        canData = read(mdfObj, 8);
        canData.Time = canData.Time + mdfObj.InitialTimestamp - hours(4);

        msgTimetable = canFDMessageTimetable(canData, canDB);
    case '.mat'
        load(fullfile(path,file))
        msgTimetable = combinedData;

    otherwise
        error('wrong file type')
end
          




signalTimetable = canSignalTimetable(msgTimetable);
N1_TPDO3 = canSignalTimetable(msgTimetable, "N1_TPDO3"); 
N1_TPDO2 = canSignalTimetable(msgTimetable, "N1_TPDO2"); 
N1_TPDO1 = canSignalTimetable(msgTimetable, "N1_TPDO1");
N1_TPDO0 = canSignalTimetable(msgTimetable, "N1_TPDO0");

N8_TPDO0 = canSignalTimetable(msgTimetable, "N8_TPDO0");
N8_TPDO1 = canSignalTimetable(msgTimetable, "N8_TPDO1");

N9_TPDO0 = canSignalTimetable(msgTimetable, "N9_TPDO0");

N10_TPDO0 = canSignalTimetable(msgTimetable, "N10_TPDO0");
N10_TPDO1 = canSignalTimetable(msgTimetable, "N10_TPDO1");
N10_TPDO2 = canSignalTimetable(msgTimetable, "N10_TPDO2");
N10_TPDO3 = canSignalTimetable(msgTimetable, "N10_TPDO3");

N16_TPDO0 = canSignalTimetable(msgTimetable, "N16_TPDO0");
N16_TPDO1 = canSignalTimetable(msgTimetable, "N16_TPDO1");

N17_TPDO0 = canSignalTimetable(msgTimetable, "N17_TPDO0");
N17_TPDO1 = canSignalTimetable(msgTimetable, "N17_TPDO1");
N17_TPDO2 = canSignalTimetable(msgTimetable, "N17_TPDO2");

N20_TPDO0 = canSignalTimetable(msgTimetable, "N20_TPDO0");
N20_TPDO1 = canSignalTimetable(msgTimetable, "N20_TPDO1");
N20_TPDO2 = canSignalTimetable(msgTimetable, "N20_TPDO2");
N20_TPDO3 = canSignalTimetable(msgTimetable, "N20_TPDO3");

N21_TPDO0 = canSignalTimetable(msgTimetable, "N21_TPDO0");
N21_TPDO1 = canSignalTimetable(msgTimetable, "N21_TPDO1");
N21_TPDO2 = canSignalTimetable(msgTimetable, "N21_TPDO2");
N21_TPDO3 = canSignalTimetable(msgTimetable, "N21_TPDO3");

N22_TPDO0 = canSignalTimetable(msgTimetable, "N22_TPDO0");
N22_TPDO1 = canSignalTimetable(msgTimetable, "N22_TPDO1");
N22_TPDO2 = canSignalTimetable(msgTimetable, "N22_TPDO2");
N22_TPDO3 = canSignalTimetable(msgTimetable, "N22_TPDO3");

N23_TPDO0 = canSignalTimetable(msgTimetable, "N23_TPDO0");
N23_TPDO1 = canSignalTimetable(msgTimetable, "N23_TPDO1");
N23_TPDO2 = canSignalTimetable(msgTimetable, "N23_TPDO2");
N23_TPDO3 = canSignalTimetable(msgTimetable, "N23_TPDO3");

N24_TPDO0 = canSignalTimetable(msgTimetable, "N24_TPDO0");
N24_TPDO1 = canSignalTimetable(msgTimetable, "N24_TPDO1");
N24_TPDO2 = canSignalTimetable(msgTimetable, "N24_TPDO2");
N24_TPDO3 = canSignalTimetable(msgTimetable, "N24_TPDO3");

N25_TPDO0 = canSignalTimetable(msgTimetable, "N25_TPDO0");
N25_TPDO1 = canSignalTimetable(msgTimetable, "N25_TPDO1");
N25_TPDO2 = canSignalTimetable(msgTimetable, "N25_TPDO2");
N25_TPDO3 = canSignalTimetable(msgTimetable, "N25_TPDO3");

N30_TPDO0 = canSignalTimetable(msgTimetable, "N30_TPDO0");
N30_TPDO1 = canSignalTimetable(msgTimetable, "N30_TPDO1");
N30_TPDO2 = canSignalTimetable(msgTimetable, "N30_TPDO2");
N30_TPDO3 = canSignalTimetable(msgTimetable, "N30_TPDO3");

N31_TPDO0 = canSignalTimetable(msgTimetable, "N31_TPDO0");
N31_TPDO1 = canSignalTimetable(msgTimetable, "N31_TPDO1");
N31_TPDO2 = canSignalTimetable(msgTimetable, "N31_TPDO2");
N31_TPDO3 = canSignalTimetable(msgTimetable, "N31_TPDO3");

N32_TPDO0 = canSignalTimetable(msgTimetable, "N32_TPDO0");
N32_TPDO1 = canSignalTimetable(msgTimetable, "N32_TPDO1");
N32_TPDO2 = canSignalTimetable(msgTimetable, "N32_TPDO2");
N32_TPDO3 = canSignalTimetable(msgTimetable, "N32_TPDO3");

N33_TPDO0 = canSignalTimetable(msgTimetable, "N33_TPDO0");
N33_TPDO1 = canSignalTimetable(msgTimetable, "N33_TPDO1");
N33_TPDO2 = canSignalTimetable(msgTimetable, "N33_TPDO2");
N33_TPDO3 = canSignalTimetable(msgTimetable, "N33_TPDO3");

N34_TPDO0 = canSignalTimetable(msgTimetable, "N34_TPDO0");
N34_TPDO1 = canSignalTimetable(msgTimetable, "N34_TPDO1");
N34_TPDO2 = canSignalTimetable(msgTimetable, "N34_TPDO2");
N34_TPDO3 = canSignalTimetable(msgTimetable, "N34_TPDO3");

N35_TPDO0 = canSignalTimetable(msgTimetable, "N35_TPDO0");
N35_TPDO1 = canSignalTimetable(msgTimetable, "N35_TPDO1");
N35_TPDO2 = canSignalTimetable(msgTimetable, "N35_TPDO2");
N35_TPDO3 = canSignalTimetable(msgTimetable, "N35_TPDO3");