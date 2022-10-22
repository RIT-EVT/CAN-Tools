prompt = "enter file name for the CANdb";
%txt = input(prompt,"s");
%canDB = canDatabase(txt);
canDB = canDatabase("CandbDev1.dbc");
fileName = "candata_test_9_1_22.blf";
binf = blfinfo(fileName);
%binf.Channellist;
blfData = blfread(fileName, 1, "Database", canDB);

