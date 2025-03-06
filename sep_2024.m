clear all
close all

% Sep 2024 Twin Otters 8-12

%% Twin Otter 8 Buoy
% read buoy data, with header removed

file1 = 'C:\Users\m256048\Documents\APL\Sep 2024\UpTempO_2024_08_NOAA-FINAL.dat.txt';

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

raw_lat = ncread("oisst-avhrr-v02r01.20240921.nc",'lat'); 
raw_lon = ncread("oisst-avhrr-v02r01.20240921.nc",'lon'); 

[lon1,lat1] = meshgrid(raw_lon,raw_lat);
 
raw_sst0909 = ncread("oisst-avhrr-v02r01.20240909.nc",'sst');
raw_sst0910 = ncread("oisst-avhrr-v02r01.20240910.nc",'sst');
raw_sst0911 = ncread("oisst-avhrr-v02r01.20240911.nc",'sst');
raw_sst0912 = ncread("oisst-avhrr-v02r01.20240912.nc",'sst');
raw_sst0913 = ncread("oisst-avhrr-v02r01.20240913.nc",'sst');
raw_sst0914 = ncread("oisst-avhrr-v02r01.20240914.nc",'sst');
raw_sst0915 = ncread("oisst-avhrr-v02r01.20240915.nc",'sst');
raw_sst0916 = ncread("oisst-avhrr-v02r01.20240916.nc",'sst');
raw_sst0917 = ncread("oisst-avhrr-v02r01.20240917.nc",'sst');
raw_sst0918 = ncread("oisst-avhrr-v02r01.20240918.nc",'sst');
raw_sst0919 = ncread("oisst-avhrr-v02r01.20240919.nc",'sst'); 
raw_sst0920 = ncread("oisst-avhrr-v02r01.20240920.nc",'sst'); 
raw_sst0921 = ncread("oisst-avhrr-v02r01.20240921.nc",'sst'); 
raw_sst0922 = ncread("oisst-avhrr-v02r01.20240922.nc",'sst'); 
raw_sst0923 = ncread("oisst-avhrr-v02r01.20240923.nc",'sst'); 
raw_sst0924 = ncread("oisst-avhrr-v02r01.20240924.nc",'sst'); 
raw_sst0925 = ncread("oisst-avhrr-v02r01.20240925.nc",'sst');
raw_sst0926 = ncread("oisst-avhrr-v02r01.20240926.nc",'sst');
raw_sst0927 = ncread("oisst-avhrr-v02r01.20240927.nc",'sst');
raw_sst0928 = ncread("oisst-avhrr-v02r01.20240928.nc",'sst');
raw_sst0929 = ncread("oisst-avhrr-v02r01.20240929.nc",'sst');
raw_sst0930 = ncread("oisst-avhrr-v02r01.20240930.nc",'sst');
raw_sst1001 = ncread("oisst-avhrr-v02r01.20241001.nc",'sst');
raw_sst1002 = ncread("oisst-avhrr-v02r01.20241002.nc",'sst');
raw_sst1003 = ncread("oisst-avhrr-v02r01.20241003.nc",'sst');
raw_sst1004 = ncread("oisst-avhrr-v02r01.20241004.nc",'sst');
raw_sst1005 = ncread("oisst-avhrr-v02r01.20241005.nc",'sst');
raw_sst1006 = ncread("oisst-avhrr-v02r01.20241006.nc",'sst');
raw_sst1007 = ncread("oisst-avhrr-v02r01.20241007.nc",'sst');
raw_sst1008 = ncread("oisst-avhrr-v02r01.20241008.nc",'sst');
raw_sst1009 = ncread("oisst-avhrr-v02r01.20241009.nc",'sst');
raw_sst1010 = ncread("oisst-avhrr-v02r01.20241010.nc",'sst');
raw_sst1011 = ncread("oisst-avhrr-v02r01.20241011.nc",'sst');
raw_sst1012 = ncread("oisst-avhrr-v02r01.20241012.nc",'sst');
raw_sst1013 = ncread("oisst-avhrr-v02r01.20241013.nc",'sst');
raw_sst1014 = ncread("oisst-avhrr-v02r01.20241014.nc",'sst');
raw_sst1015 = ncread("oisst-avhrr-v02r01.20241015.nc",'sst');
raw_sst1016 = ncread("oisst-avhrr-v02r01.20241016.nc",'sst');
raw_sst1017 = ncread("oisst-avhrr-v02r01.20241017.nc",'sst');
raw_sst1018 = ncread("oisst-avhrr-v02r01.20241018.nc",'sst');
raw_sst1019 = ncread("oisst-avhrr-v02r01.20241019.nc",'sst');
raw_sst1020 = ncread("oisst-avhrr-v02r01.20241020.nc",'sst');
raw_sst1021 = ncread("oisst-avhrr-v02r01.20241021.nc",'sst');
raw_sst1022 = ncread("oisst-avhrr-v02r01.20241022.nc",'sst');
raw_sst1023 = ncread("oisst-avhrr-v02r01.20241023.nc",'sst');
raw_sst1024 = ncread("oisst-avhrr-v02r01.20241024.nc",'sst');
raw_sst1025 = ncread("oisst-avhrr-v02r01.20241025.nc",'sst'); 
raw_sst1026 = ncread("oisst-avhrr-v02r01.20241026.nc",'sst'); 
raw_sst1027 = ncread("oisst-avhrr-v02r01.20241027.nc",'sst'); 
raw_sst1028 = ncread("oisst-avhrr-v02r01.20241028.nc",'sst'); 
raw_sst1029 = ncread("oisst-avhrr-v02r01.20241029.nc",'sst'); 
raw_sst1030 = ncread("oisst-avhrr-v02r01.20241030.nc",'sst'); 
raw_sst1031 = ncread("oisst-avhrr-v02r01.20241031.nc",'sst'); 
%raw_sst1101 = ncread("oisst-avhrr-v02r01.20241101.nc",'sst'); 

sst0909= raw_sst0909';
sst0910= raw_sst0910';
sst0911= raw_sst0911';
sst0912= raw_sst0912';
sst0913= raw_sst0913';
sst0914= raw_sst0914';
sst0915= raw_sst0915';
sst0916= raw_sst0916';
sst0917= raw_sst0917';
sst0918= raw_sst0918';
sst0919= raw_sst0919';
sst0920= raw_sst0920';
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
%sst1101= raw_sst1101';

%% Twin Otter 8 NOAA

noaatemps1(1,1) = sst0909(649,839);
noaatemps1(1,2) = sst0910(650,836);
noaatemps1(1,3) = sst0911(650,835);
noaatemps1(1,4) = sst0912(651,832);
noaatemps1(1,5) = sst0913(651,831);
noaatemps1(1,6) = sst0914(652,831);
noaatemps1(1,7) = sst0915(652,829);
noaatemps1(1,8) = sst0916(652,825);
noaatemps1(1,9) = sst0917(653,822);
noaatemps1(1,10) = sst0918(654,822);
noaatemps1(1,11) = sst0919(654,822);
noaatemps1(1,12) = sst0920(654,821);
noaatemps1(1,13) = sst0921(655,821);
noaatemps1(1,14) = sst0922(655,820);
noaatemps1(1,15) = sst0923(655,819);
noaatemps1(1,16) = sst0924(655,817);
noaatemps1(1,17) = sst0925(654,815);
noaatemps1(1,18) = sst0926(654,812);
noaatemps1(1,19) = sst0927(654,810);
noaatemps1(1,20) = sst0928(654,809);
noaatemps1(1,21) = sst0929(654,809);
noaatemps1(1,22) = sst0930(655,810);
noaatemps1(1,23) = sst1001(655,810);
noaatemps1(1,24) = sst1002(656,810);
noaatemps1(1,25) = sst1003(656,812);
noaatemps1(1,26) = sst1004(657,810);
noaatemps1(1,27) = sst1005(657,808);
noaatemps1(1,28) = sst1006(657,806);
noaatemps1(1,29) = sst1007(657,806);
noaatemps1(1,30) = sst1008(657,805);
noaatemps1(1,31) = sst1009(657,805);
noaatemps1(1,32) = sst1010(657,805);
noaatemps1(1,33) = sst1011(657,804);
noaatemps1(1,34) = sst1012(656,803);
noaatemps1(1,35) = sst1013(656,801);
noaatemps1(1,36) = sst1014(655,798);
noaatemps1(1,37) = sst1015(655,795);
noaatemps1(1,38) = sst1016(655,793);
noaatemps1(1,39) = sst1017(656,789);
noaatemps1(1,40) = sst1018(655,786);
noaatemps1(1,41) = sst1019(655,785);
noaatemps1(1,42) = sst1020(655,784);
noaatemps1(1,43) = sst1021(656,781);
noaatemps1(1,44) = sst1022(657,778);
noaatemps1(1,45) = sst1023(657,775);
noaatemps1(1,46) = sst1024(656,777);
noaatemps1(1,47) = sst1025(655,780);
noaatemps1(1,48) = sst1026(654,783);
noaatemps1(1,49) = sst1027(654,783);
noaatemps1(1,50) = sst1028(654,783);
noaatemps1(1,51) = sst1029(654,783);
noaatemps1(1,52) = sst1030(654,783);
noaatemps1(1,53) = sst1031(653,782);
%noaatemps1(1,54) = sst1101(653,781);

noaatemps1 = noaatemps1';

%% Twin Otter 8 Plot

%slope = (tempmn1(1,35)-tempmn1(1,1))/(noaatemps1(35,1)-noaatemps1(1,1));
%y=slope.* noaatemps1;

figure(1)
scatter(noaatemps1, tempmn1(1,1:53),'b','filled','o','LineWidth',2)
grid on
xlim([-2 4]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Daily NOAA Temperatures vs Twin Otter #8 Temperatures from 09/09/24 to 11/01/24")
hold on
%plot(noaatemps1,y,'k','LineWidth',1)

%% TO 8 Stats

buoy1mean = mean(tempmn1); % 1.1080
buoy1std = std(tempmn1); % 1.4355
noaa1mean = mean(noaatemps1); % 0.8468
noaa1std = std(noaatemps1); % 1.0962

%% Twin Otter 9 Buoy

file2 = 'C:\Users\m256048\Documents\APL\Sep 2024\UpTempO_2024_09_NOAA-FINAL.dat.txt';

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

%% Twin Otter 9 NOAA

noaatemps2(1,1) = sst0909(649,838);
noaatemps2(1,2) = sst0910(649,834);
noaatemps2(1,3) = sst0911(650,829);
noaatemps2(1,4) = sst0912(651,828);
noaatemps2(1,5) = sst0913(652,826);
noaatemps2(1,6) = sst0914(652,822);
noaatemps2(1,7) = sst0915(653,820);
noaatemps2(1,8) = sst0916(653,817);
noaatemps2(1,9) = sst0917(654,812);
noaatemps2(1,10) = sst0918(654,807);
noaatemps2(1,11) = sst0919(654,806);
noaatemps2(1,12) = sst0920(654,804);
noaatemps2(1,13) = sst0921(654,803);
noaatemps2(1,14) = sst0922(654,803);
noaatemps2(1,15) = sst0923(654,802);
noaatemps2(1,16) = sst0924(654,800);
noaatemps2(1,17) = sst0925(654,797);
noaatemps2(1,18) = sst0926(654,794);
noaatemps2(1,19) = sst0927(654,792);
noaatemps2(1,20) = sst0928(654,791);
noaatemps2(1,21) = sst0929(654,791);
noaatemps2(1,22) = sst0930(654,791);
noaatemps2(1,23) = sst1001(654,791);
noaatemps2(1,24) = sst1002(654,791);
noaatemps2(1,25) = sst1003(654,791);
noaatemps2(1,26) = sst1004(655,790);
noaatemps2(1,27) = sst1005(655,789);
noaatemps2(1,28) = sst1006(655,787);
noaatemps2(1,29) = sst1007(655,785);
noaatemps2(1,30) = sst1008(655,785);
noaatemps2(1,31) = sst1009(655,785);
noaatemps2(1,32) = sst1010(654,785);
noaatemps2(1,33) = sst1011(654,785);
noaatemps2(1,34) = sst1012(653,784);
noaatemps2(1,35) = sst1013(652,783);
noaatemps2(1,36) = sst1014(652,782);
noaatemps2(1,37) = sst1015(652,782);
noaatemps2(1,38) = sst1016(652,781);
noaatemps2(1,39) = sst1017(652,779);
noaatemps2(1,40) = sst1018(652,778);
noaatemps2(1,41) = sst1019(652,777);
noaatemps2(1,42) = sst1020(653,776);
noaatemps2(1,43) = sst1021(654,772);
noaatemps2(1,44) = sst1022(654,767);
noaatemps2(1,45) = sst1023(653,763);
noaatemps2(1,46) = sst1024(651,763);
noaatemps2(1,47) = sst1025(650,765);
noaatemps2(1,48) = sst1026(650,766);
noaatemps2(1,49) = sst1027(649,767);
noaatemps2(1,50) = sst1028(650,766);
noaatemps2(1,51) = sst1029(650,766);
noaatemps2(1,52) = sst1030(651,766);
noaatemps2(1,53) = sst1031(652,764);
%noaatemps2(1,54) = sst1101(652,762);
%noaatemps2(1,55) = sst1102(651,760);

noaatemps2 = noaatemps2';

%% Plot 

figure(2)
scatter(noaatemps2, tempmn2(1,1:53),'k','filled','o','LineWidth',2)
grid on
%xlim([-2 0]);
%ylim([-2 0]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Daily NOAA Temperatures vs Twin Otter #9 Temperatures from 09/09/24 to 11/02/24")
hold on
%plot(noaatemps2,y2,'m','LineWidth',1)

%% TO 9 Stats

buoy2mean = mean(tempmn2); %0.7716
buoy2std = std(tempmn2); % 1.6848
noaa2mean = mean(noaatemps2); %0.6411
noaa2std = std(noaatemps2); %1.3646

%% Twin Otter 10 Buoy

file3 = 'C:\Users\m256048\Documents\APL\Sep 2024\UpTempO_2024_10_NOAA-FINAL.dat.txt';

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

%% Twin Otter 10 NOAA

noaatemps3(1,1) = sst0909(648,838);
noaatemps3(1,2) = sst0910(648,835);
noaatemps3(1,3) = sst0911(649,832);
noaatemps3(1,4) = sst0912(650,829);
noaatemps3(1,5) = sst0913(650,827);
noaatemps3(1,6) = sst0914(651,825);
noaatemps3(1,7) = sst0915(651,822);
noaatemps3(1,8) = sst0916(651,820);
noaatemps3(1,9) = sst0917(652,820);
noaatemps3(1,10) = sst0918(652,820);
noaatemps3(1,11) = sst0919(652,820);
noaatemps3(1,12) = sst0920(653,820);
noaatemps3(1,13) = sst0921(653,820);
noaatemps3(1,14) = sst0922(653,819);
noaatemps3(1,15) = sst0923(653,820);
noaatemps3(1,16) = sst0924(653,819);
noaatemps3(1,17) = sst0925(654,819);
noaatemps3(1,18) = sst0926(654,820);
noaatemps3(1,19) = sst0927(655,822);
noaatemps3(1,20) = sst0928(655,825);
noaatemps3(1,21) = sst0929(655,828);
noaatemps3(1,22) = sst0930(655,830);
noaatemps3(1,23) = sst1001(655,831);
noaatemps3(1,24) = sst1002(656,831);
noaatemps3(1,25) = sst1003(656,829);
noaatemps3(1,26) = sst1004(657,827);
noaatemps3(1,27) = sst1005(658,827);
noaatemps3(1,28) = sst1006(658,828);
noaatemps3(1,29) = sst1007(659,828);
noaatemps3(1,30) = sst1008(659,828);
noaatemps3(1,31) = sst1009(659,829);
noaatemps3(1,32) = sst1010(659,831);
noaatemps3(1,33) = sst1011(659,831);
noaatemps3(1,34) = sst1012(658,833);
noaatemps3(1,35) = sst1013(658,834);
noaatemps3(1,36) = sst1014(658,835);
noaatemps3(1,37) = sst1015(658,838);
noaatemps3(1,38) = sst1016(657,839);
noaatemps3(1,39) = sst1017(657,839);
noaatemps3(1,40) = sst1018(656,840);
noaatemps3(1,41) = sst1019(656,840);
noaatemps3(1,42) = sst1020(656,839);
noaatemps3(1,43) = sst1021(656,838);
noaatemps3(1,44) = sst1022(656,839);
noaatemps3(1,45) = sst1023(656,838);
noaatemps3(1,46) = sst1024(655,838);
noaatemps3(1,47) = sst1025(655,839);
noaatemps3(1,48) = sst1026(655,841);
noaatemps3(1,49) = sst1027(654,840);
noaatemps3(1,50) = sst1028(654,840);
noaatemps3(1,51) = sst1029(653,839);
noaatemps3(1,52) = sst1030(653,838);
noaatemps3(1,53) = sst1031(653,839);

noaatemps3 = noaatemps3';

%% Twin Otter 10 Plot

figure(3)
scatter(noaatemps3, tempmn3,'k','filled','o','LineWidth',2)
grid on
%xlim([-2 0]);
%ylim([-2 0]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Daily NOAA Temperatures vs Twin Otter #10 Temperatures from 09/09/24 to 10/31/24")

%% TO 10 Stats

buoy3mean = mean(tempmn3); % 1.0988
buoy3std = std(tempmn3); % 1.5155
noaa3mean = mean(noaatemps3); % 0.6864
noaa3std = std(noaatemps3); % 1.3699

%% Twin Otter 11 Buoy

file4 = 'C:\Users\m256048\Documents\APL\Sep 2024\UpTempO_2024_11_NOAA-FINAL.dat.txt';

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

%% Twin Otter 11 NOAA 
% NEED TO CHANGE NUMBERS

noaatemps4(1,1) = sst0909(648,841);
noaatemps4(1,2) = sst0910(648,839);
noaatemps4(1,3) = sst0911(648,837);
noaatemps4(1,4) = sst0912(648,836);
noaatemps4(1,5) = sst0913(648,833);
noaatemps4(1,6) = sst0914(648,832);
noaatemps4(1,7) = sst0915(648,831);
noaatemps4(1,8) = sst0916(648,829);
noaatemps4(1,9) = sst0917(648,828);
noaatemps4(1,10) = sst0918(647,827);
noaatemps4(1,11) = sst0919(647,826);
noaatemps4(1,12) = sst0920(647,826);
noaatemps4(1,13) = sst0921(647,827);
noaatemps4(1,14) = sst0922(647,826);
noaatemps4(1,15) = sst0923(646,824);
noaatemps4(1,16) = sst0924(646,823);
noaatemps4(1,17) = sst0925(646,823);
noaatemps4(1,18) = sst0926(646,824);
noaatemps4(1,19) = sst0927(646,825);
noaatemps4(1,20) = sst0928(645,826);
noaatemps4(1,21) = sst0929(645,828);
noaatemps4(1,22) = sst0930(645,827);
noaatemps4(1,23) = sst1001(646,827);
noaatemps4(1,24) = sst1002(646,827);
noaatemps4(1,25) = sst1003(646,827);
noaatemps4(1,26) = sst1004(646,828);
noaatemps4(1,27) = sst1005(646,827);
noaatemps4(1,28) = sst1006(646,826);
noaatemps4(1,29) = sst1007(646,825);
noaatemps4(1,30) = sst1008(646,825);
noaatemps4(1,31) = sst1009(646,826);
noaatemps4(1,32) = sst1010(646,828);
noaatemps4(1,33) = sst1011(646,830);
noaatemps4(1,34) = sst1012(646,832);
noaatemps4(1,35) = sst1013(646,828);
noaatemps4(1,36) = sst1014(646,823);
noaatemps4(1,37) = sst1015(646,822);
noaatemps4(1,38) = sst1016(646,823);
noaatemps4(1,39) = sst1017(645,824);
noaatemps4(1,40) = sst1018(645,826);
noaatemps4(1,41) = sst1019(644,830);
noaatemps4(1,42) = sst1020(644,831);
noaatemps4(1,43) = sst1021(645,829);
noaatemps4(1,44) = sst1022(645,831);
noaatemps4(1,45) = sst1023(645,832);
noaatemps4(1,46) = sst1024(644,833);
noaatemps4(1,47) = sst1025(644,837);
noaatemps4(1,48) = sst1026(643,841);
noaatemps4(1,49) = sst1027(643,844);
noaatemps4(1,50) = sst1028(643,843);
noaatemps4(1,51) = sst1029(643,839);
noaatemps4(1,52) = sst1030(643,836);
noaatemps4(1,53) = sst1031(643,834);
%noaatemps4(1,54) = sst1101(644,830);
%noaatemps4(1,55) = sst1102(644,826);

noaatemps4 = noaatemps4';

%% Twin otter 11 plot

%slope4 = (tempmn4(1,34)-tempmn4(1,1))/(noaatemps4(34,1)-noaatemps4(1,1));
%y4=slope4.* noaatemps4;

figure(4)
scatter(noaatemps4, tempmn4(1,1:53),'green','filled','o','LineWidth',2)
grid on
xlim([-1 5]);
%ylim([-2 12]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Daily NOAA Temperatures vs Twin Otter #11 Temperatures from 09/09/24 to 11/02/24")
hold on
%plot(noaatemps4,y4,'m','LineWidth',1)

%% TO 11 Stats

buoy4mean = mean(tempmn4); % 2.6199
buoy4std = std(tempmn4); % 1.7406
noaa4mean = mean(noaatemps4); % 2.3392
noaa4std = std(noaatemps4); % 1.2551

%% Data together

both(1,1:53) = noaatemps1(:,1);
both(1,54:106) = noaatemps2(:,1);
both(1,107:159) = noaatemps3(:,1);
both(1,160:212) = noaatemps4(:,1);
both(2,1:53) = tempmn1(1,1:53);
both(2,54:106) = tempmn2(1,1:53);
both(2,107:159) = tempmn3(1,1:53);
both(2,160:212) = tempmn4(1,1:53);

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
title("Daily NOAA Temperatures vs Twin Otter Temperatures from Fall 2024")

%% Correlation

corr = corrcoef(both(1,:), both(2,:)); % 0.9776

%% Least squares analysis

p = polyfit(both(1,:), both(2,:), 1); %slope, intercept

% Plot the data and the fitted line
figure;
scatter(both(1,:), both(2,:), 'k','filled','o','LineWidth',2);  % Original data points
hold on;
plot(both(1,:), polyval(p, both(1,:)), '-r', 'LineWidth',2);  % Fitted line
xlim([-2 5])
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title('Least Squares Fit using polyfit');
grid on;

%% Spread around 1to1 

spread = both(2,:) - both(1,:);
ave_spread = mean(spread); % 0.3474

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
title("Buoy Data Averaged at 0.5^oC Bins and Daily NOAA Temperatures vs Twin Otter Temperatures from Fall 2024")

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

sum_histo = sum(histo);

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

t = -2:1:14;

figure(8)
scatter(both(1,:), both(2,:), 30, lightGray,'filled','o')
hold on 
scatter(matrix, med,'k','filled','o','LineWidth',2)
scatter(matrix, avg,'r','filled','o','LineWidth',2)
plot(t,t, 'LineWidth',3)
hold on
grid on
legend('Buoy', 'Median', 'Average', '1to1 Line', Location='best')
xlim([-2 14]);
ylim([-2 14]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Buoy Data Averaged at 0.5^oC Bins and Daily NOAA Temperatures vs Twin Otter Temperatures from Fall 2024")

%% Robust Stats

% RMSD using mean
n = 11; % Number of elements
rmsd = sqrt(sum(((avg(1, 1:11) - matrix(1, 1:11)).^2), 'omitnan')/ n) % 0.4259 (about 0.4 degrees off from the 1-1 line)
rmsd_med = sqrt(sum(((med(1, 1:11) - matrix(1, 1:11)).^2),'omitnan') / n) % 0.4528

%% Bias

bias_buoy_avg = avg - matrix;
bias_buoy_med = med - matrix;
q=0;

bias_avg_avg = mean(bias_buoy_avg(1, 1:11)) % 0.3365
bias_med_avg = mean(bias_buoy_med(1, 1:11)) % 0.3705

figure(9)
scatter(matrix, bias_buoy_med,'k','filled','o','LineWidth',2)
hold on
scatter(matrix, bias_buoy_avg,'r','filled','o','LineWidth',2)
yline(q, 'LineWidth',2)
xlim([-2 12])
ylim([-1 5])
ylabel('Buoy Bias (^oC)')
xlabel('Temperature (^oC)')
legend('Median', "Mean",Location="best")

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

%% Buoy - NOAA plot

difference = both(2,:) - both(1,:); % buoy - noaa

accuracy_avg = nanmean(difference); % 

coords(1,1:53) = lonmn1(1,1:53);
coords(1,54:106) = lonmn2(1,1:53);
coords(1,107:159) = lonmn3(1,1:53);
coords(1,160:212) = lonmn4(1,1:53);

coords(2,1:53) = latmn1(1,1:53);
coords(2,54:106) = latmn2(1,1:53);
coords(2,107:159) = latmn3(1,1:53);
coords(2,160:212) = latmn4(1,1:53);


%% Accuracy on map

figure(22)
plot(coastline(:,1),coastline(:,2),'k-','linewidth',2)
colormap(redblue)
xlim([-180 -140]);
ylim([60 75]);
hold on
scatter(coords(1,:), coords(2,:), 100, difference, 'filled', 'MarkerEdgeColor',lightGray); % 100 is the marker size
c = colorbar; % To show the temperature scale
clim([-6 6])
xlabel('Longitude')
ylabel('Latitude')
title('Difference Between Buoy Data and NOAA Data')