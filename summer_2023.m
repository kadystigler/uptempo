clear all
close all

% 2023 Twin Otters 1-4

%% Twin Otter 1 Buoy
% read buoy data, with header removed

file1 = 'C:\Users\m256048\Documents\APL\Overall 2023\1\UTO_2023-01_300434064041440_L2.dat.txt';

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

%% Twin Otter 1 NOAA 

raw_lat = ncread("oisst-avhrr-v02r01.20230615.nc",'lat'); 
raw_lon = ncread("oisst-avhrr-v02r01.20230615.nc",'lon'); 

[lon1,lat1] = meshgrid(raw_lon,raw_lat);
 
raw_sst0615 = ncread("oisst-avhrr-v02r01.20230615.nc",'sst'); 
raw_sst0616 = ncread("oisst-avhrr-v02r01.20230616.nc",'sst'); 
raw_sst0617 = ncread("oisst-avhrr-v02r01.20230617.nc",'sst'); 
raw_sst0618 = ncread("oisst-avhrr-v02r01.20230618.nc",'sst'); 
raw_sst0619 = ncread("oisst-avhrr-v02r01.20230619.nc",'sst');
raw_sst0620 = ncread("oisst-avhrr-v02r01.20230620.nc",'sst');
raw_sst0621 = ncread("oisst-avhrr-v02r01.20230621.nc",'sst');
raw_sst0622 = ncread("oisst-avhrr-v02r01.20230622.nc",'sst');
raw_sst0623 = ncread("oisst-avhrr-v02r01.20230623.nc",'sst');
raw_sst0624 = ncread("oisst-avhrr-v02r01.20230624.nc",'sst');
raw_sst0625 = ncread("oisst-avhrr-v02r01.20230625.nc",'sst');
raw_sst0626 = ncread("oisst-avhrr-v02r01.20230626.nc",'sst');
raw_sst0627 = ncread("oisst-avhrr-v02r01.20230627.nc",'sst');
raw_sst0628 = ncread("oisst-avhrr-v02r01.20230628.nc",'sst');
raw_sst0629 = ncread("oisst-avhrr-v02r01.20230629.nc",'sst');
raw_sst0630 = ncread("oisst-avhrr-v02r01.20230630.nc",'sst');
raw_sst0701 = ncread("oisst-avhrr-v02r01.20230701.nc",'sst');
raw_sst0702 = ncread("oisst-avhrr-v02r01.20230702.nc",'sst');
raw_sst0703 = ncread("oisst-avhrr-v02r01.20230703.nc",'sst');
raw_sst0704 = ncread("oisst-avhrr-v02r01.20230704.nc",'sst');
raw_sst0705 = ncread("oisst-avhrr-v02r01.20230705.nc",'sst');
raw_sst0706 = ncread("oisst-avhrr-v02r01.20230706.nc",'sst');
raw_sst0707 = ncread("oisst-avhrr-v02r01.20230707.nc",'sst');
raw_sst0708 = ncread("oisst-avhrr-v02r01.20230708.nc",'sst');
raw_sst0709 = ncread("oisst-avhrr-v02r01.20230709.nc",'sst');
raw_sst0710 = ncread("oisst-avhrr-v02r01.20230710.nc",'sst');
raw_sst0711 = ncread("oisst-avhrr-v02r01.20230711.nc",'sst');
raw_sst0712 = ncread("oisst-avhrr-v02r01.20230712.nc",'sst');
raw_sst0713 = ncread("oisst-avhrr-v02r01.20230713.nc",'sst');
raw_sst0714 = ncread("oisst-avhrr-v02r01.20230714.nc",'sst');
raw_sst0715 = ncread("oisst-avhrr-v02r01.20230715.nc",'sst');
raw_sst0716 = ncread("oisst-avhrr-v02r01.20230716.nc",'sst');
raw_sst0717 = ncread("oisst-avhrr-v02r01.20230717.nc",'sst');
raw_sst0718 = ncread("oisst-avhrr-v02r01.20230718.nc",'sst');
raw_sst0719 = ncread("oisst-avhrr-v02r01.20230719.nc",'sst'); 

sst0615= raw_sst0615';
sst0616= raw_sst0616';
sst0617= raw_sst0617';
sst0618= raw_sst0618';
sst0619= raw_sst0619';
sst0620= raw_sst0620';
sst0621= raw_sst0621';
sst0622= raw_sst0622';
sst0623= raw_sst0623';
sst0624= raw_sst0624';
sst0625= raw_sst0625';
sst0626= raw_sst0626';
sst0627= raw_sst0627';
sst0628= raw_sst0628';
sst0629= raw_sst0629';
sst0630= raw_sst0630';
sst0701= raw_sst0701';
sst0702= raw_sst0702';
sst0703= raw_sst0703';
sst0704= raw_sst0704';
sst0705= raw_sst0705';
sst0706= raw_sst0706';
sst0707= raw_sst0707';
sst0708= raw_sst0708';
sst0709= raw_sst0709';
sst0710= raw_sst0710';
sst0711= raw_sst0711';
sst0712= raw_sst0712';
sst0713= raw_sst0713';
sst0714= raw_sst0714';
sst0715= raw_sst0715';
sst0716= raw_sst0716';
sst0717= raw_sst0717';
sst0718= raw_sst0718';
sst0719= raw_sst0719';

%% Twin Otter 1 NOAA

noaatemps1(1,1) = sst0615(632,768); 
noaatemps1(1,2) = sst0616(632,768); 
noaatemps1(1,3) = sst0617(632,767); 
noaatemps1(1,4) = sst0618(633,767); 
noaatemps1(1,5) = sst0619(634,766); 
noaatemps1(1,6) = sst0620(635,766); 
noaatemps1(1,7) = sst0621(635,765); 
noaatemps1(1,8) = sst0622(636,764); 
noaatemps1(1,9) = sst0623(636,762); 
noaatemps1(1,10) = sst0624(636,761); 
noaatemps1(1,11) = sst0625(636,760); 
noaatemps1(1,12) = sst0626(636,759); 
noaatemps1(1,13) = sst0627(636,759);
noaatemps1(1,14) = sst0628(636,758);
noaatemps1(1,15) = sst0629(636,758);
noaatemps1(1,16) = sst0630(636,758);
noaatemps1(1,17) = sst0701(636,758); 
noaatemps1(1,18) = sst0702(636,758); 
noaatemps1(1,19) = sst0703(636,757); 
noaatemps1(1,20) = sst0704(637,757);
noaatemps1(1,21) = sst0705(637,757);
noaatemps1(1,22) = sst0706(637,757);
noaatemps1(1,23) = sst0707(637,756);
noaatemps1(1,24) = sst0708(638,755);
noaatemps1(1,25) = sst0709(638,755);
noaatemps1(1,26) = sst0710(639,754);
noaatemps1(1,27) = sst0711(639,754);
noaatemps1(1,28) = sst0712(639,753);
noaatemps1(1,29) = sst0713(639,753);
noaatemps1(1,30) = sst0714(640,752);
noaatemps1(1,31) = sst0715(640,750);
noaatemps1(1,32) = sst0716(640,750);
noaatemps1(1,33) = sst0717(640,748);
noaatemps1(1,34) = sst0718(641,747);
noaatemps1(1,35) = sst0719(642,747);

noaatemps1 = noaatemps1';

%% Twin Otter 1 Plot

slope = (tempmn1(1,35)-tempmn1(1,1))/(noaatemps1(35,1)-noaatemps1(1,1));
y=slope.* noaatemps1;

figure(1)
scatter(noaatemps1, tempmn1,'b','filled','o','LineWidth',2)
grid on
%xlim([-2 16]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Daily NOAA Temperatures vs Twin Otter #1 Temperatures from 06/15/23 to 07/19/23")
hold on
%plot(noaatemps1,y,'k','LineWidth',1)

%% TO 1 Stats

buoy1mean = mean(tempmn1); % 4.4016
buoy1std = std(tempmn1); % 1.9596
noaa1mean = mean(noaatemps1); % 2.2814
noaa1std = std(noaatemps1); % 2.3525


%% Twin Otter 2 Buoy

file2 = 'C:\Users\m256048\Documents\APL\Overall 2023\2\UTO_2023-02_300434064042420_L2.dat.txt';

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

%% Twin Otter 2 NOAA 
% NO JULY 01 AND 02

noaatemps2(1,1) = sst0615(631,765); 
noaatemps2(1,2) = sst0616(631,765); 
noaatemps2(1,3) = sst0617(632,766); 
noaatemps2(1,4) = sst0618(633,767); 
noaatemps2(1,5) = sst0619(634,766); 
noaatemps2(1,6) = sst0620(635,765); 
noaatemps2(1,7) = sst0621(635,764); 
noaatemps2(1,8) = sst0622(635,762); 
noaatemps2(1,9) = sst0623(635,760); 
noaatemps2(1,10) = sst0624(635,758); 
noaatemps2(1,11) = sst0625(635,758); 
noaatemps2(1,12) = sst0626(635,757); 
noaatemps2(1,13) = sst0627(635,756);
noaatemps2(1,14) = sst0628(635,755);
noaatemps2(1,15) = sst0629(635,755);
noaatemps2(1,16) = sst0630(636,754); 
noaatemps2(1,17) = sst0703(636,753); 
noaatemps2(1,18) = sst0704(637,753);
noaatemps2 = noaatemps2';

%% Plot

slope2 = (tempmn2(1,18)-tempmn2(1,18))/(noaatemps2(18,1)-noaatemps2(1,1));
y2=slope2.* noaatemps2;

figure(2)
scatter(noaatemps2, tempmn2,'k','filled','o','LineWidth',2)
grid on
%xlim([-2 0]);
%ylim([-2 0]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Daily NOAA Temperatures vs Twin Otter #2 Temperatures from 06/15/23 to 07/04/23")
hold on
%plot(noaatemps2,y2,'m','LineWidth',1)

%% TO 2 Stats

buoy2mean = mean(tempmn2); %2.9369
buoy2std = std(tempmn2); % 0.7053
noaa2mean = mean(noaatemps2); %0.5344
noaa2std = std(noaatemps2); %1.3380

%% Twin Otter 3 Buoy

file3 = 'C:\Users\m256048\Documents\APL\Overall 2023\3\UTO_2023-03_300434064046720_L2.dat.txt';

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
%% Twin Otter 3 NOAA

noaatemps3(1,1) = sst0616(632,766); 
noaatemps3(1,2) = sst0617(632,767); 
noaatemps3(1,3) = sst0618(633,766); 
noaatemps3(1,4) = sst0619(634,765); 
noaatemps3(1,5) = sst0620(635,765); 
noaatemps3(1,6) = sst0621(635,765); 
noaatemps3(1,7) = sst0622(635,763); 
noaatemps3(1,8) = sst0623(635,761); 
noaatemps3(1,9) = sst0624(635,759); 
noaatemps3(1,10) = sst0625(636,758); 
noaatemps3(1,11) = sst0626(635,758); 
noaatemps3(1,12) = sst0627(635,757);
noaatemps3(1,13) = sst0628(635,756);
noaatemps3(1,14) = sst0629(635,755);
noaatemps3(1,15) = sst0630(635,755);
noaatemps3(1,16) = sst0701(636,755); 
noaatemps3(1,17) = sst0702(636,755);
noaatemps3 = noaatemps3';

%% Twin Otter 3 Plot

figure(3)
scatter(noaatemps3, tempmn3,'k','filled','o','LineWidth',2)
grid on
%xlim([-2 0]);
%ylim([-2 0]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Daily NOAA Temperatures vs Twin Otter #3 Temperatures from 06/16/23 to 07/02/23")

%% TO 3 Stats

buoy3mean = mean(tempmn3); % 2.9267
buoy3std = std(tempmn3); % 0.6209
noaa3mean = mean(noaatemps3); % 0.6629
noaa3std = std(noaatemps3); % 1.1089

%% Twin Otter 4 Buoy

file4 = 'C:\Users\m256048\Documents\APL\Overall 2023\4\UTO_2023-04_300434064042710_L2.dat.txt';

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

%% Twin Otter 4 NOAA

noaatemps4(1,1) = sst0616(633, 769);
noaatemps4(2,1) = sst0617(633, 768);
noaatemps4(3,1) = sst0618(634, 767);
noaatemps4(4,1) = sst0619(635, 766);
noaatemps4(5,1) = sst0620(636, 766);
noaatemps4(6,1) = sst0621(636, 765);
noaatemps4(7,1) = sst0622(636, 764);
noaatemps4(8,1) = sst0623(637, 762);
noaatemps4(9,1) = sst0624(637, 760);
noaatemps4(10,1) = sst0625(637, 760);
noaatemps4(11,1) = sst0626(637, 758);
noaatemps4(12,1) = sst0627(637, 758);
noaatemps4(13,1) = sst0628(637, 756);
noaatemps4(14,1) = sst0629(637, 755);
noaatemps4(15,1) = sst0630(637, 755);
noaatemps4(16,1) = sst0701(637, 755);
noaatemps4(17,1) = sst0702(637, 755);
noaatemps4(18,1) = sst0703(637, 755);
noaatemps4(19,1) = sst0704(638, 753);
noaatemps4(20,1) = sst0705(638, 752);
noaatemps4(21,1) = sst0706(638, 752);
noaatemps4(22,1) = sst0707(639, 751);
noaatemps4(23,1) = sst0708(640, 749);
noaatemps4(24,1) = sst0709(640, 748);
noaatemps4(25,1) = sst0710(640, 747);
noaatemps4(26,1) = sst0711(640, 746);
noaatemps4(27,1) = sst0712(641, 745);
noaatemps4(28,1) = sst0713(643, 745);
noaatemps4(29,1) = sst0714(644, 745);
noaatemps4(30,1) = sst0715(645, 746);
noaatemps4(31,1) = sst0716(644, 748);
noaatemps4(32,1) = sst0717(644, 749);
noaatemps4(33,1) = sst0718(645, 750);
noaatemps4(34,1) = sst0719(645, 751);

%% Twin otter 4 plot

slope4 = (tempmn4(1,34)-tempmn4(1,1))/(noaatemps4(34,1)-noaatemps4(1,1));
y4=slope4.* noaatemps4;

figure(4)
scatter(noaatemps4, tempmn4,'green','filled','o','LineWidth',2)
grid on
%xlim([-2 12]);
%ylim([-2 12]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Daily NOAA Temperatures vs Twin Otter #4 Temperatures from 06/16/23 to 07/19/23")
hold on
%plot(noaatemps4,y4,'m','LineWidth',1)

%% TO 4 Stats

buoy4mean = mean(tempmn4); % 3.9847
buoy4std = std(tempmn4); %1.5877
noaa4mean = mean(noaatemps4); % 0.1576
noaa4std = std(noaatemps4); % 0.9753

%% Data together

both(1,1:35) = noaatemps1(:,1);
both(1,36:53) = noaatemps2(:,1);
both(1,54:70) = noaatemps3(:,1);
both(1,71:104) = noaatemps4(:,1);
both(2,1:35) = tempmn1(1,:);
both(2,36:53) = tempmn2(1,:);
both(2,54:70) = tempmn3(1,:);
both(2,71:104) = tempmn4(1,:);

%% Overall Graph

p = -2:1:14;

figure(5)
scatter(both(1,:), both(2,:),'k','filled','o','LineWidth',2)
hold on
grid on
plot(p,p, 'LineWidth',3)
xlim([-2 14]);
ylim([-2 14]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Daily NOAA Temperatures vs Twin Otter Temperatures from June 2023")

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
range15 = both(1, :) < 5.5 & both(1, :) >= 5.0;
range16 = both(1, :) < 6.0 & both(1, :) >= 5.5;
range17 = both(1, :) < 6.5 & both(1, :) >= 6.0;
range18 = both(1, :) < 7.0 & both(1, :) >= 6.5;
range19 = both(1, :) < 7.5 & both(1, :) >= 7.0;
range20 = both(1, :) < 8.0 & both(1, :) >= 7.5;

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
avg(1,14) = mean(both(2, range15));
avg(1,15) = nanmean(both(2, range16));
avg(1,16) = nanmean(both(2, range17));
avg(1,17) = nanmean(both(2, range18));
avg(1,18) = mean(both(2, range19));
avg(1,19) = mean(both(2, range20));

%% Overall plot with bin averaged

lightGray = [0.7, 0.7, 0.7];
matrix = -1.25:0.5:8;

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
title("Buoy Data Averaged at 0.5^oC Bins and Daily NOAA Temperatures vs Twin Otter Temperatures from June 2023")

%% Histogram of # in each bin

categories = {'', '-1^oC - -0.5^oC', '', '0^oC - 0.5^oC', '', '1^oC - 1.5^oC', '', '2^oC - 2.5^oC', '', '3^oC - 3.5^oC', '', '4^oC - 4.5^oC', '', '5^oC - 5.5^oC', '', '6^oC - 6.5^oC', '', '7^oC - 7.5^oC', ''};
histo = [sum(range2) sum(range3) sum(range4) sum(range5) sum(range6) sum(range7) sum(range8) sum(range9) sum(range10) sum(range11) sum(range12) sum(range13) sum(range14) sum(range15) sum(range16) sum(range17) sum(range18) sum(range19) sum(range20) ];
figure(7)
bar(histo)
hold on
set(gca, 'XTick', 1:length(categories), 'XTickLabel', categories); % Set the x-axis labels
xtickangle(45);
grid on
ylabel('Amount of Data Points in Each Bin')

sum = sum(histo);

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
med(1,14) = median(both(2, range15));
med(1,15) = median(both(2, range16));
med(1,16) = median(both(2, range17));
med(1,17) = median(both(2, range18));
med(1,18) = median(both(2, range19));
med(1,19) = median(both(2, range20));

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
title("Buoy Data Averaged at 0.5^oC Bins and Daily NOAA Temperatures vs Twin Otter Temperatures from June 2023")

%% Robust Stats

% RMSD using mean
n = length(avg); % Number of elements
%rmsd = sqrt(sum(((avg - matrix).^2), 'omitnan')/ n); % 2.3690 (about 2 degrees off from the 1-1 line)
%rmsd_med = sqrt(sum(((med - matrix).^2),'omitnan') / n); % 2.2374

%% Bias

bias_buoy_avg = avg - matrix;
bias_buoy_med = med - matrix;
q=0;

figure(9)
scatter(matrix, bias_buoy_med,'k','filled','o','LineWidth',2)
hold on
scatter(matrix, bias_buoy_avg,'r','filled','o','LineWidth',2)
xlim([-2 12])
yline(q, 'LineWidth',2)
ylabel('Buoy Bias (^oC)')
xlabel('Temperature (^oC)')
legend('Median', "Mean",Location="best")

%% Fix lons

lonmn1 = lonmn1 - 360;
lonmn2 = lonmn2 - 360;
lonmn3 = lonmn3 - 360;
lonmn4 = lonmn4 - 360;

%% Buoy #1 Track with Temperatures

load('coastline180.mat')
figure(10)
plot(coastline(:,1),coastline(:,2),'k-','linewidth',2)
hold on
xlim([-180 -150]);
ylim([60 75]);
hold on
scatter(lonmn1, latmn1, 100, tempmn1, 'filled'); % 100 is the marker size
colormap("jet")
c = colorbar; % To show the temperature scale
clim([-2 10])
xlabel('Longitude')
ylabel('Latitude')
title('Buoy #1 Track with Temperatures')

%% Buoy #2 Track with Temperatures

load('coastline180.mat')
figure(11)
plot(coastline(:,1),coastline(:,2),'k-','linewidth',2)
hold on
xlim([-180 -150]);
ylim([60 75]);
hold on
scatter(lonmn2, latmn2, 100, tempmn2, 'filled'); % 100 is the marker size
colormap("jet")
c = colorbar; % To show the temperature scale
clim([-2 10])
xlabel('Longitude')
ylabel('Latitude')
title('Buoy #2 Track with Temperatures')

%% Buoy #3 Track with Temperatures

load('coastline180.mat')
figure(12)
plot(coastline(:,1),coastline(:,2),'k-','linewidth',2)
hold on
xlim([-180 -150]);
ylim([60 75]);
hold on
scatter(lonmn3, latmn3, 100, tempmn3, 'filled'); % 100 is the marker size
colormap("jet")
c = colorbar; % To show the temperature scale
clim([-2 10])
xlabel('Longitude')
ylabel('Latitude')
title('Buoy #3 Track with Temperatures')

%% Buoy #4 Track with Temperatures

load('coastline180.mat')
figure(13)
plot(coastline(:,1),coastline(:,2),'k-','linewidth',2)
hold on
xlim([-180 -150]);
ylim([60 75]);
hold on
scatter(lonmn4, latmn4, 100, tempmn4, 'filled'); % 100 is the marker size
colormap("jet")
c = colorbar; % To show the temperature scale
clim([-2 10])
xlabel('Longitude')
ylabel('Latitude')
title('Buoy #4 Track with Temperatures')

%% All buoy tracks

figure(14)
plot(coastline(:,1),coastline(:,2),'k-','linewidth',2)
%colormap("jet")
xlim([-180 -150]);
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
title('All Buoy Tracks from June 2023 with Temperatures')