clear all
close all

% Sep 2023 Twin Otters 9-12

%% Twin Otter 9 Buoy
% read buoy data, with header removed

file1 = 'C:\Users\m256048\Documents\APL\Sep 2023\UTO_2023-09_300434064040440_L2.dat.txt';

data1 = readmatrix(file1);
year1 = data1(:,1);
month1 = data1(:,2);
day1 = data1(:,3);
hour1 = data1(:,4);

time1 = datenum(year1,month1,day1,hour1,0,0);
%plot(time);datetick('y')   % I often plot as I go so I know I'm doing things correctly.

dateu1 = unique([year1 month1 day1],'rows');  % where the first col of dateu is year, the second month, third day
%timeu = datenum(dateu(1,:)),datenum(dateu(:,2)),datenum(dateu(:,3));  % this could be the time vector you plot your averages against

for k = 1:length(dateu1)
    indd1 = find(year1==dateu1(k,1) & month1==dateu1(k,2) & day1==dateu1(k,3));
    latmn1(k) = mean(data1(indd1,5));
    lonmn1(k) = mean(data1(indd1,6));
    tempmn1(k) = mean(data1(indd1,7));

end

lonmn1 = lonmn1+ 360;

%% Twin Otter NOAA 

raw_lat = ncread("oisst-avhrr-v02r01.20230921.nc",'lat'); 
raw_lon = ncread("oisst-avhrr-v02r01.20230921.nc",'lon'); 

[lon1,lat1] = meshgrid(raw_lon,raw_lat);
 
raw_sst0921 = ncread("oisst-avhrr-v02r01.20230921.nc",'sst'); 
raw_sst0922 = ncread("oisst-avhrr-v02r01.20230922.nc",'sst'); 
raw_sst0923 = ncread("oisst-avhrr-v02r01.20230923.nc",'sst'); 
raw_sst0924 = ncread("oisst-avhrr-v02r01.20230924.nc",'sst'); 
raw_sst0925 = ncread("oisst-avhrr-v02r01.20230925.nc",'sst');
raw_sst0926 = ncread("oisst-avhrr-v02r01.20230926.nc",'sst');
raw_sst0927 = ncread("oisst-avhrr-v02r01.20230927.nc",'sst');
raw_sst0928 = ncread("oisst-avhrr-v02r01.20230928.nc",'sst');
raw_sst0929 = ncread("oisst-avhrr-v02r01.20230929.nc",'sst');
raw_sst0930 = ncread("oisst-avhrr-v02r01.20230930.nc",'sst');
raw_sst1001 = ncread("oisst-avhrr-v02r01.20231001.nc",'sst');
raw_sst1002 = ncread("oisst-avhrr-v02r01.20231002.nc",'sst');
raw_sst1003 = ncread("oisst-avhrr-v02r01.20231003.nc",'sst');
raw_sst1004 = ncread("oisst-avhrr-v02r01.20231004.nc",'sst');
raw_sst1005 = ncread("oisst-avhrr-v02r01.20231005.nc",'sst');
raw_sst1006 = ncread("oisst-avhrr-v02r01.20231006.nc",'sst');
raw_sst1007 = ncread("oisst-avhrr-v02r01.20231007.nc",'sst');
raw_sst1008 = ncread("oisst-avhrr-v02r01.20231008.nc",'sst');
raw_sst1009 = ncread("oisst-avhrr-v02r01.20231009.nc",'sst');
raw_sst1010 = ncread("oisst-avhrr-v02r01.20231010.nc",'sst');
raw_sst1011 = ncread("oisst-avhrr-v02r01.20231011.nc",'sst');
raw_sst1012 = ncread("oisst-avhrr-v02r01.20231012.nc",'sst');
raw_sst1013 = ncread("oisst-avhrr-v02r01.20231013.nc",'sst');
raw_sst1014 = ncread("oisst-avhrr-v02r01.20231014.nc",'sst');
raw_sst1015 = ncread("oisst-avhrr-v02r01.20231015.nc",'sst');
raw_sst1016 = ncread("oisst-avhrr-v02r01.20231016.nc",'sst');
raw_sst1017 = ncread("oisst-avhrr-v02r01.20231017.nc",'sst');
raw_sst1018 = ncread("oisst-avhrr-v02r01.20231018.nc",'sst');
raw_sst1019 = ncread("oisst-avhrr-v02r01.20231019.nc",'sst');
raw_sst1020 = ncread("oisst-avhrr-v02r01.20231020.nc",'sst');
raw_sst1021 = ncread("oisst-avhrr-v02r01.20231021.nc",'sst');
raw_sst1022 = ncread("oisst-avhrr-v02r01.20231022.nc",'sst');
raw_sst1023 = ncread("oisst-avhrr-v02r01.20231023.nc",'sst');
raw_sst1024 = ncread("oisst-avhrr-v02r01.20231024.nc",'sst');
raw_sst1025 = ncread("oisst-avhrr-v02r01.20231025.nc",'sst'); 
raw_sst1026 = ncread("oisst-avhrr-v02r01.20231026.nc",'sst'); 
raw_sst1027 = ncread("oisst-avhrr-v02r01.20231027.nc",'sst'); 
raw_sst1028 = ncread("oisst-avhrr-v02r01.20231028.nc",'sst'); 
raw_sst1029 = ncread("oisst-avhrr-v02r01.20231029.nc",'sst'); 
raw_sst1030 = ncread("oisst-avhrr-v02r01.20231030.nc",'sst'); 
raw_sst1031 = ncread("oisst-avhrr-v02r01.20231031.nc",'sst'); 
raw_sst1101 = ncread("oisst-avhrr-v02r01.20231101.nc",'sst'); 
raw_sst1102 = ncread("oisst-avhrr-v02r01.20231102.nc",'sst'); 
raw_sst1103 = ncread("oisst-avhrr-v02r01.20231103.nc",'sst'); 
raw_sst1104 = ncread("oisst-avhrr-v02r01.20231104.nc",'sst'); 
raw_sst1105 = ncread("oisst-avhrr-v02r01.20231105.nc",'sst'); 
raw_sst1106 = ncread("oisst-avhrr-v02r01.20231106.nc",'sst'); 
raw_sst1107 = ncread("oisst-avhrr-v02r01.20231107.nc",'sst'); 
raw_sst1108 = ncread("oisst-avhrr-v02r01.20231108.nc",'sst'); 
raw_sst1109 = ncread("oisst-avhrr-v02r01.20231109.nc",'sst'); 
raw_sst1110 = ncread("oisst-avhrr-v02r01.20231110.nc",'sst'); 
raw_sst1111 = ncread("oisst-avhrr-v02r01.20231111.nc",'sst'); 
raw_sst1112 = ncread("oisst-avhrr-v02r01.20231112.nc",'sst'); 
raw_sst1113 = ncread("oisst-avhrr-v02r01.20231113.nc",'sst'); 
raw_sst1114 = ncread("oisst-avhrr-v02r01.20231114.nc",'sst'); 
raw_sst1115 = ncread("oisst-avhrr-v02r01.20231115.nc",'sst'); 
raw_sst1116 = ncread("oisst-avhrr-v02r01.20231116.nc",'sst'); 

sst0921= raw_sst0921';
sst0922= raw_sst0922';
sst0923= raw_sst0923';
sst0924= raw_sst0924';
sst0925= raw_sst0925';
sst0926= raw_sst0926';
sst0927= raw_sst0927';
sst0928= raw_sst0928';
sst0929= raw_sst0929';
sst0930= raw_sst0930';
sst1001= raw_sst1001';
sst1002= raw_sst1002';
sst1003= raw_sst1003';
sst1004= raw_sst1004';
sst1005= raw_sst1005';
sst1006= raw_sst1006';
sst1007= raw_sst1007';
sst1008= raw_sst1008';
sst1009= raw_sst1009';
sst1010= raw_sst1010';
sst1011= raw_sst1011';
sst1012= raw_sst1012';
sst1013= raw_sst1013';
sst1014= raw_sst1014';
sst1015= raw_sst1015';
sst1016= raw_sst1016';
sst1017= raw_sst1017';
sst1018= raw_sst1018';
sst1019= raw_sst1019';
sst1020= raw_sst1020';
sst1021= raw_sst1021';
sst1022= raw_sst1022';
sst1023= raw_sst1023';
sst1024= raw_sst1024';
sst1025= raw_sst1025';
sst1026= raw_sst1026';
sst1027= raw_sst1027';
sst1028= raw_sst1028';
sst1029= raw_sst1029';
sst1030= raw_sst1030';
sst1031= raw_sst1031';
sst1101= raw_sst1101';
sst1102= raw_sst1102';
sst1103= raw_sst1103';
sst1104= raw_sst1104';
sst1105= raw_sst1105';
sst1106= raw_sst1106';
sst1107= raw_sst1107';
sst1108= raw_sst1108';
sst1109= raw_sst1109';
sst1110= raw_sst1110';
sst1111= raw_sst1111';
sst1112= raw_sst1112';
sst1113= raw_sst1113';
sst1114= raw_sst1114';
sst1115= raw_sst1115';
sst1116= raw_sst1116';

%% Twin Otter 9 NOAA

noaatemps1(1,1) = sst0921(646,812);
noaatemps1(1,2) = sst0922(646,812);
noaatemps1(1,3) = sst0923(646,814);
noaatemps1(1,4) = sst0924(646,814);
noaatemps1(1,5) = sst0925(646,814);

noaatemps1 = noaatemps1';

%% Twin Otter 9 Plot

%slope = (tempmn1(1,35)-tempmn1(1,1))/(noaatemps1(35,1)-noaatemps1(1,1));
%y=slope.* noaatemps1;

figure(1)
scatter(noaatemps1, tempmn1,'b','filled','o','LineWidth',2)
grid on
%xlim([-2 16]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Daily NOAA Temperatures vs Twin Otter #9 Temperatures from 09/21/23 to 09/21/23")
hold on
%plot(noaatemps1,y,'k','LineWidth',1)

%% TO 9 Stats

buoy1mean = mean(tempmn1); % 3.1387
buoy1std = std(tempmn1); % 0.5929
noaa1mean = mean(noaatemps1); % 3.4080
noaa1std = std(noaatemps1); % 0.0665

%% Twin Otter 10 Buoy

file2 = 'C:\Users\m256048\Documents\APL\Sep 2023\UTO_2023-10_300434064048220_L2.dat.txt';

data2 = readmatrix(file2);
year2 = data2(:,1);
month2 = data2(:,2);
day2 = data2(:,3);
hour2 = data2(:,4);

time2 = datenum(year2,month2,day2,hour2,0,0);

dateu2 = unique([year2 month2 day2],'rows');  % where the first col of dateu is year, the second month, third day
%timeu = datenum(dateu(1,:)),datenum(dateu(:,2)),datenum(dateu(:,3));  % this could be the time vector you plot your averages against

for k = 1:length(dateu2)
    indd2 = find(year2==dateu2(k,1) & month2==dateu2(k,2) & day2==dateu2(k,3));
    latmn2(k) = mean(data2(indd2,5));
    lonmn2(k) = mean(data2(indd2,6));
    tempmn2(k) = mean(data2(indd2,7)); % use 2:6

end
lonmn2 = lonmn2+ 360;

%% Twin Otter 10 NOAA

noaatemps2(1,1) = sst0921(646,841);
noaatemps2(1,2) = sst0922(646,843);
noaatemps2(1,3) = sst0923(646,845);
noaatemps2(1,4) = sst0924(647,845);
noaatemps2(1,5) = sst0925(647,845);
noaatemps2(1,6) = sst0926(647,841);
noaatemps2(1,7) = sst0927(647,839);
noaatemps2(1,8) = sst0928(646,840);
noaatemps2(1,9) = sst0929(646,842);
noaatemps2(1,10) = sst0930(647,843);
noaatemps2(1,11) = sst1001(647,842);
noaatemps2(1,12) = sst1002(646,843);
noaatemps2(1,13) = sst1003(646,844);
noaatemps2(1,14) = sst1004(646,845);
noaatemps2(1,15) = sst1005(647,848);
noaatemps2(1,16) = sst1006(647,850);
noaatemps2(1,17) = sst1007(647,851);
noaatemps2(1,18) = sst1008(648,851);
noaatemps2(1,19) = sst1009(648,850);
noaatemps2(1,20) = sst1010(649,847);
noaatemps2(1,21) = sst1011(649,843);
noaatemps2(1,22) = sst1012(649,841);
noaatemps2(1,23) = sst1013(649,840);
noaatemps2(1,24) = sst1014(649,837);
noaatemps2(1,25) = sst1015(648,834);
noaatemps2(1,26) = sst1016(649,830);
noaatemps2(1,27) = sst1017(649,828);
noaatemps2(1,28) = sst1018(650,828);
noaatemps2(1,29) = sst1019(651,829);
noaatemps2(1,30) = sst1020(651,829);
noaatemps2(1,31) = sst1021(651,827);
noaatemps2(1,32) = sst1022(651,826);
noaatemps2(1,33) = sst1023(651,823);
noaatemps2(1,34) = sst1024(651,820);
noaatemps2(1,35) = sst1025(651,816);
noaatemps2(1,36) = sst1026(652,813);
noaatemps2(1,37) = sst1027(653,813);
noaatemps2(1,38) = sst1028(653,814);
noaatemps2(1,39) = sst1029(653,816);
noaatemps2(1,40) = sst1030(653,816);
noaatemps2(1,41) = sst1031(653,816);
noaatemps2(1,42) = sst1101(653,814);
noaatemps2(1,43) = sst1102(653,812);
noaatemps2(1,44) = sst1104(654,799);
noaatemps2(1,45) = sst1105(654,795);
noaatemps2(1,46) = sst1106(654,786);
noaatemps2(1,47) = sst1107(654,780);
noaatemps2(1,48) = sst1108(653,774);
noaatemps2(1,49) = sst1109(653,770);
noaatemps2(1,50) = sst1110(652,768);
noaatemps2(1,51) = sst1111(652,768);
noaatemps2(1,52) = sst1112(653,769);
noaatemps2(1,53) = sst1113(654,769);
noaatemps2(1,54) = sst1114(654,771);
noaatemps2(1,55) = sst1115(654,767);
noaatemps2(1,56) = sst1116(653,769);

noaatemps2 = noaatemps2';

%% Plot 

figure(2)
scatter(noaatemps2, tempmn2,'k','filled','o','LineWidth',2)
grid on
%xlim([-2 0]);
%ylim([-2 0]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Daily NOAA Temperatures vs Twin Otter #10 Temperatures from 09/21/23 to 11/16/23")
hold on
%plot(noaatemps2,y2,'m','LineWidth',1)

%% TO 10 Stats

buoy2mean = mean(tempmn2); %1.1624
buoy2std = std(tempmn2); % 2.1024
noaa2mean = mean(noaatemps2); %0.9923
noaa2std = std(noaatemps2); %2.0055

%% Twin Otter 11 Buoy

file3 = 'C:\Users\m256048\Documents\APL\Sep 2023\UTO_2023-11_300434064044730_L2.dat.txt';

data3 = readmatrix(file3);
year3 = data3(:,1);
month3 = data3(:,2);
day3 = data3(:,3);
hour3 = data3(:,4);

time3 = datenum(year3,month3,day3,hour3,0,0);

dateu3 = unique([year3 month3 day3],'rows');  % where the first col of dateu is year, the second month, third day
%timeu = datenum(dateu(1,:)),datenum(dateu(:,2)),datenum(dateu(:,3));  % this could be the time vector you plot your averages against

for k = 1:length(dateu3)
    indd3 = find(year3==dateu3(k,1) & month3==dateu3(k,2) & day3==dateu3(k,3));
    latmn3(k) = mean(data3(indd3,5));
    lonmn3(k) = mean(data3(indd3,6));
    tempmn3(k) = mean(data3(indd3,7)); % use 

end
lonmn3 = lonmn3+ 360;

%% Twin Otter 11 NOAA

noaatemps3(1,1) = sst0921(648,840);
noaatemps3(1,2) = sst0922(649,840);
noaatemps3(1,3) = sst0923(649,838);
noaatemps3(1,4) = sst0924(649,837);
noaatemps3(1,5) = sst0925(649,834);
noaatemps3(1,6) = sst0926(649,831);
noaatemps3(1,7) = sst0927(650,829);
noaatemps3(1,8) = sst0928(652,828);
noaatemps3(1,9) = sst0929(652,827);
noaatemps3(1,10) = sst0930(652,824);
noaatemps3(1,11) = sst1001(652,819);
noaatemps3(1,12) = sst1002(652,815);
noaatemps3(1,13) = sst1003(651,815);
noaatemps3(1,14) = sst1004(650,818);
noaatemps3(1,15) = sst1005(650,821);
noaatemps3(1,16) = sst1006(649,823);
noaatemps3(1,17) = sst1007(649,823);
noaatemps3(1,18) = sst1008(648,822);
noaatemps3(1,19) = sst1009(648,820);
noaatemps3(1,20) = sst1010(648,818);
noaatemps3(1,21) = sst1011(648,816);
noaatemps3(1,22) = sst1012(648,814);
noaatemps3(1,23) = sst1013(648,814);
noaatemps3(1,24) = sst1014(648,813);
noaatemps3(1,25) = sst1015(648,812);
noaatemps3(1,26) = sst1016(648,812);
noaatemps3(1,27) = sst1017(648,812);
noaatemps3(1,28) = sst1018(648,812);
noaatemps3(1,29) = sst1019(648,812);
noaatemps3(1,30) = sst1020(648,813);
noaatemps3(1,31) = sst1021(647,816);
noaatemps3(1,32) = sst1022(647,820);
noaatemps3(1,33) = sst1023(648,823);
noaatemps3(1,34) = sst1024(648,825);
noaatemps3(1,35) = sst1025(649,826);
noaatemps3(1,36) = sst1026(651,826);
noaatemps3(1,37) = sst1027(651,827);
noaatemps3(1,38) = sst1028(651,829);
noaatemps3(1,39) = sst1029(652,830);
noaatemps3(1,40) = sst1030(651,830);
noaatemps3(1,41) = sst1031(652,830);
noaatemps3(1,42) = sst1101(652,828);
noaatemps3(1,43) = sst1102(652,823);
noaatemps3(1,44) = sst1103(652,819);
noaatemps3(1,45) = sst1104(652,813);
noaatemps3(1,46) = sst1105(652,808);
noaatemps3(1,47) = sst1106(653,804);
noaatemps3(1,48) = sst1107(653,801);
noaatemps3(1,49) = sst1108(652,797);
noaatemps3(1,50) = sst1109(652,794);
noaatemps3(1,51) = sst1110(652,793);
noaatemps3(1,52) = sst1111(652,793);
noaatemps3(1,53) = sst1112(652,794);
noaatemps3(1,54) = sst1113(653,794);
noaatemps3(1,55) = sst1114(654,792);
noaatemps3(1,56) = sst1115(654,792);
noaatemps3(1,57) = sst1116(654,792);

noaatemps3 = noaatemps3';

%% Twin Otter 11 Plot

figure(3)
scatter(noaatemps3, tempmn3,'k','filled','o','LineWidth',2)
grid on
%xlim([-2 0]);
%ylim([-2 0]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Daily NOAA Temperatures vs Twin Otter #11 Temperatures from 09/21/23 to 11/16/23")

%% TO 11 Stats

buoy3mean = mean(tempmn3); % 0.6269
buoy3std = std(tempmn3); % 1.7109
noaa3mean = mean(noaatemps3); % 0.9268
noaa3std = std(noaatemps3); % 1.7297

%% Twin Otter 12 Buoy

file4 = 'C:\Users\m256048\Documents\APL\Sep 2023\UTO_2023-12_300434064045210_L2.dat.txt';

data4 = readmatrix(file4);
year4 = data4(:,1);
month4 = data4(:,2);
day4 = data4(:,3);
hour4 = data4(:,4);

time4 = datenum(year4,month4,day4,hour4,0,0);

dateu4 = unique([year4 month4 day4],'rows');  % where the first col of dateu is year, the second month, third day
%timeu = datenum(dateu(1,:)),datenum(dateu(:,2)),datenum(dateu(:,3));  % this could be the time vector you plot your averages against

for k = 1:length(dateu4)
    indd4 = find(year4==dateu4(k,1) & month4==dateu4(k,2) & day4==dateu4(k,3));
    latmn4(k) = mean(data4(indd4,5));
    lonmn4(k) = mean(data4(indd4,6));
    tempmn4(k) = mean(data4(indd4,7)); % use 

end
lonmn4 = 360+ lonmn4;

%% Twin Otter 12 NOAA

noaatemps4(1,1) = sst0921(644,841);
noaatemps4(1,2) = sst0922(644,842);
noaatemps4(1,3) = sst0923(644,844);
noaatemps4(1,4) = sst0924(644,846);
noaatemps4(1,5) = sst0925(644,846);
noaatemps4(1,6) = sst0926(644,846);
noaatemps4(1,7) = sst0927(644,846);
noaatemps4(1,8) = sst0928(644,847);
noaatemps4(1,9) = sst0929(644,848);
noaatemps4(1,10) = sst0930(644,849);
noaatemps4(1,11) = sst1001(643,849);
noaatemps4(1,12) = sst1002(643,850);
noaatemps4(1,13) = sst1003(643,850);
noaatemps4(1,14) = sst1004(643,853);
noaatemps4(1,15) = sst1005(642,858);
noaatemps4(1,16) = sst1006(642,862);
noaatemps4(1,17) = sst1007(642,867);
noaatemps4(1,18) = sst1008(641,868);
noaatemps4(1,19) = sst1009(642,863);
noaatemps4(1,20) = sst1010(642,855);
noaatemps4(1,21) = sst1011(643,850);
noaatemps4(1,22) = sst1012(643,847);
noaatemps4(1,23) = sst1013(643,846);
noaatemps4(1,24) = sst1014(644,844);
noaatemps4(1,25) = sst1015(644,843);
noaatemps4(1,26) = sst1016(645,841);
noaatemps4(1,27) = sst1017(645,839);
noaatemps4(1,28) = sst1018(645,839);
noaatemps4(1,29) = sst1019(644,839);
noaatemps4(1,30) = sst1020(644,840);
noaatemps4(1,31) = sst1021(643,845);
noaatemps4(1,32) = sst1022(643,851);
noaatemps4(1,33) = sst1023(642,854);
noaatemps4(1,34) = sst1024(643,853);
noaatemps4(1,35) = sst1025(642,857);
noaatemps4(1,36) = sst1026(642,860);
noaatemps4(1,37) = sst1027(642,861);
noaatemps4(1,38) = sst1028(642,866);
noaatemps4(1,39) = sst1029(642,866);
noaatemps4(1,40) = sst1030(642,866);
noaatemps4(1,41) = sst1031(641,865);
noaatemps4(1,42) = sst1101(642,861);
noaatemps4(1,43) = sst1102(642,860);
noaatemps4(1,44) = sst1103(642,857);
noaatemps4(1,45) = sst1104(642,851);
noaatemps4(1,46) = sst1105(643,846);

noaatemps4 = noaatemps4';

%% Twin otter 12 plot

%slope4 = (tempmn4(1,34)-tempmn4(1,1))/(noaatemps4(34,1)-noaatemps4(1,1));
%y4=slope4.* noaatemps4;

figure(4)
scatter(noaatemps4, tempmn4,'green','filled','o','LineWidth',2)
grid on
xlim([-1 5]);
%ylim([-2 12]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Daily NOAA Temperatures vs Twin Otter #12 Temperatures from 09/21/23 to 11/05/23")
hold on
%plot(noaatemps4,y4,'m','LineWidth',1)

%% TO 12 Stats

buoy4mean = mean(tempmn4); % 1.9335
buoy4std = std(tempmn4); %1.5734
noaa4mean = mean(noaatemps4); % 1.6750
noaa4std = std(noaatemps4); % 1.5091

%% Data together

both(1,1:5) = noaatemps1(:,1);
both(1,6:61) = noaatemps2(:,1);
both(1,62:118) = noaatemps3(:,1);
both(1,119:164) = noaatemps4(:,1);
both(2,1:5) = tempmn1(1,:);
both(2,6:61) = tempmn2(1,:);
both(2,62:118) = tempmn3(1,:);
both(2,119:164) = tempmn4(1,:);

%% Overall Graph

p = -2:1:14;

figure(5)
scatter(both(1,:), both(2,:),'k','filled','o','LineWidth',2)
hold on
grid on
plot(p,p, 'LineWidth',3)
%xlim([-2 12]);
%ylim([-2 8]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Daily NOAA Temperatures vs Twin Otter Temperatures from Fall 2023")

%% Bins
% temperature bins for NOAA data (either a 1 or 0 for if temperature is in
% that range)
range2 = both(1, :) < -1.0 & both(1, :) >= -1.5;
range3 = both(1, :) < -0.5 & both(1, :) >= -1.0;
range4 = both(1, :) < 0.0 & both(1, :) >= -0.5;
range5 = both(1, :) < 0.5 & both(1, :) >= 0;
range6 = both(1, :) < 1.0 & both(1, :) >= 0.5;
range7 = both(1, :) < 1.5 & both(1, :) >= 1;
range8 = both(1, :) < 2.0 & both(1, :) >= 1.5;
range9 = both(1, :) < 2.5 & both(1, :) >= 2.0;
range10 = both(1, :) < 3.0 & both(1, :) >= 2.5;
range11 = both(1, :) < 3.5 & both(1, :) >= 3.0;
range12 = both(1, :) < 4.0 & both(1, :) >= 3.5;
range13 = both(1, :) < 4.5 & both(1, :) >= 4.0;
range14 = both(1, :) < 5.0 & both(1, :) >= 4.5;

% using the range (1s and 0s) to pull out the BUOY data that correlates to
% the same day and averaging those values
avg(1,1) = mean(both(2, range2)); %
avg(1,2) = mean(both(2, range3));
avg(1,3) = mean(both(2, range4));
avg(1,4) = mean(both(2, range5));
avg(1,5) = mean(both(2, range6));
avg(1,6) = mean(both(2, range7));
avg(1,7) = mean(both(2, range8));
avg(1,8) = mean(both(2, range9));
avg(1,9) = mean(both(2, range10));
avg(1,10) = mean(both(2, range11));
avg(1,11) = mean(both(2, range12));
avg(1,12) = mean(both(2, range13));
avg(1,13) = mean(both(2, range14));

%% Overall plot with bin averaged

lightGray = [0.7, 0.7, 0.7];
matrix = -1.25:0.5:5;

figure(6)
scatter(both(1,:), both(2,:), 30, lightGray,'filled','o')
hold on 
plot(p,p, 'LineWidth',3)
hold on
grid on
scatter(matrix, avg,'k','filled','o','LineWidth',2)
%xlim([-2 12]);
%ylim([-2 12]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Buoy Data Averaged at 0.5^oC Bins and Daily NOAA Temperatures vs Twin Otter Temperatures from Fall 2023")

%% Histogram of # in each bin

categories = {'', '-1^oC - -0.5^oC', '', '0^oC - 0.5^oC', '', '1^oC - 1.5^oC', '', '2^oC - 2.5^oC', '', '3^oC - 3.5^oC', '', '4^oC - 4.5^oC', ''};
histo = [sum(range2) sum(range3) sum(range4) sum(range5) sum(range6) sum(range7) sum(range8) sum(range9) sum(range10) sum(range11) sum(range12) sum(range13) sum(range14) ];
figure(7)
bar(histo)
hold on
set(gca, 'XTick', 1:length(categories), 'XTickLabel', categories); % Set the x-axis labels
xtickangle(45);
grid on
ylabel('Amount of Data Points in Each Bin')

%% Median bins

med(1,1) = median(both(2, range2)); %
med(1,2) = median(both(2, range3));
med(1,3) = median(both(2, range4));
med(1,4) = median(both(2, range5));
med(1,5) = median(both(2, range6));
med(1,6) = median(both(2, range7));
med(1,7) = median(both(2, range8));
med(1,8) = median(both(2, range9));
med(1,9) = median(both(2, range10));
med(1,10) = median(both(2, range11));
med(1,11) = median(both(2, range12));
med(1,12) = median(both(2, range13));
med(1,13) = median(both(2, range14));

%% Overall Plot w/ Median and Mean

figure(8)
scatter(both(1,:), both(2,:), 30, lightGray,'filled','o')
hold on 
scatter(matrix, med,'k','filled','o','LineWidth',2)
scatter(matrix, avg,'r','filled','o','LineWidth',2)
plot(p,p, 'LineWidth',3)
hold on
grid on
legend('Buoy', 'Median', 'Average', '1to1 Line', Location='best')
%xlim([-2 12]);
%ylim([-2 12]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Buoy Data Averaged at 0.5^oC Bins and Daily NOAA Temperatures vs Twin Otter Temperatures from Fall 2023")

%% Bias

bias_buoy_avg = avg - matrix;
bias_buoy_med = med - matrix;
q=0;

figure(9)
scatter(matrix, bias_buoy_med,'k','filled','o','LineWidth',2)
hold on
scatter(matrix, bias_buoy_avg,'r','filled','o','LineWidth',2)
xlim([-2 12])
ylim([-1 5])
yline(q, 'LineWidth',2)
ylabel('Buoy Bias (^oC)')
xlabel('Temperature (^oC)')
legend('Median', "Mean",Location="best")

sum = sum(histo);

%% Fix lons

lonmn1 = lonmn1 - 360;
lonmn2 = lonmn2 - 360;
lonmn3 = lonmn3 - 360;
lonmn4 = lonmn4 - 360;

%% All buoy tracks

load('coastline180.mat')

figure(14)
plot(coastline(:,1),coastline(:,2),'k-','linewidth',2)
%colormap("jet")
xlim([-180 -140]);
ylim([60 75]);
hold on
scatter(lonmn1, latmn1, 50, tempmn1, 'filled');
scatter(lonmn2, latmn2, 50, tempmn2, 'filled');
scatter(lonmn4, latmn4, 50, tempmn4, 'filled');
scatter(lonmn3, latmn3, 50, tempmn3, 'filled');
c = colorbar; % To show the temperature scale
clim([-2 15])
xlabel('Longitude')
ylabel('Latitude')
title('All Buoy Tracks with Temperatures')