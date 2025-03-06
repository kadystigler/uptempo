%%
clear all
close all

% finish all the differnt buoys
% put them all on one scatter plot
% correlate between every 2 degrees of temperature
%% Twin Otter 1 Buoy
% read buoy data, with header removed

file1 = 'C:\Users\m256048\Documents\APL\twin otter 1 2024\UpTempO_2024_01_NOAA-20240722.dat.txt';

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

%% Twin Otter 1 NOAA

raw_lat = ncread("oisst-avhrr-v02r01.20240603.nc",'lat'); 
raw_lon = ncread("oisst-avhrr-v02r01.20240603.nc",'lon'); 

[lon1,lat1] = meshgrid(raw_lon,raw_lat);

raw_sst0603 = ncread("oisst-avhrr-v02r01.20240603.nc",'sst'); 
raw_sst0604 = ncread("oisst-avhrr-v02r01.20240604.nc",'sst'); 
raw_sst0605 = ncread("oisst-avhrr-v02r01.20240605.nc",'sst'); 
raw_sst0606 = ncread("oisst-avhrr-v02r01.20240606.nc",'sst'); 
raw_sst0607 = ncread("oisst-avhrr-v02r01.20240607.nc",'sst'); 
raw_sst0608 = ncread("oisst-avhrr-v02r01.20240608.nc",'sst'); 
raw_sst0609 = ncread("oisst-avhrr-v02r01.20240609.nc",'sst'); 
raw_sst0610 = ncread("oisst-avhrr-v02r01.20240610.nc",'sst'); 
raw_sst0611 = ncread("oisst-avhrr-v02r01.20240611.nc",'sst'); 
raw_sst0612 = ncread("oisst-avhrr-v02r01.20240612.nc",'sst'); 
raw_sst0613 = ncread("oisst-avhrr-v02r01.20240613.nc",'sst'); 
raw_sst0614 = ncread("oisst-avhrr-v02r01.20240614.nc",'sst'); 
raw_sst0615 = ncread("oisst-avhrr-v02r01.20240615.nc",'sst'); 
raw_sst0616 = ncread("oisst-avhrr-v02r01.20240616.nc",'sst'); 
raw_sst0617 = ncread("oisst-avhrr-v02r01.20240617.nc",'sst'); 
raw_sst0618 = ncread("oisst-avhrr-v02r01.20240618.nc",'sst'); 
raw_sst0619 = ncread("oisst-avhrr-v02r01.20240619.nc",'sst');
raw_sst0620 = ncread("oisst-avhrr-v02r01.20240620.nc",'sst');
raw_sst0621 = ncread("oisst-avhrr-v02r01.20240621.nc",'sst');
raw_sst0622 = ncread("oisst-avhrr-v02r01.20240622.nc",'sst');
raw_sst0623 = ncread("oisst-avhrr-v02r01.20240623.nc",'sst');
raw_sst0624 = ncread("oisst-avhrr-v02r01.20240624.nc",'sst');
raw_sst0625 = ncread("oisst-avhrr-v02r01.20240625.nc",'sst');
raw_sst0626 = ncread("oisst-avhrr-v02r01.20240626.nc",'sst');
raw_sst0627 = ncread("oisst-avhrr-v02r01.20240627.nc",'sst');
raw_sst0628 = ncread("oisst-avhrr-v02r01.20240628.nc",'sst');
raw_sst0629 = ncread("oisst-avhrr-v02r01.20240629.nc",'sst');
raw_sst0630 = ncread("oisst-avhrr-v02r01.20240630.nc",'sst');
raw_sst0701 = ncread("oisst-avhrr-v02r01.20240701.nc",'sst');
raw_sst0702 = ncread("oisst-avhrr-v02r01.20240702.nc",'sst');
raw_sst0703 = ncread("oisst-avhrr-v02r01.20240703.nc",'sst');
raw_sst0704 = ncread("oisst-avhrr-v02r01.20240704.nc",'sst');
raw_sst0705 = ncread("oisst-avhrr-v02r01.20240705.nc",'sst');
raw_sst0706 = ncread("oisst-avhrr-v02r01.20240706.nc",'sst');
raw_sst0707 = ncread("oisst-avhrr-v02r01.20240707.nc",'sst');
raw_sst0708 = ncread("oisst-avhrr-v02r01.20240708.nc",'sst');
raw_sst0709 = ncread("oisst-avhrr-v02r01.20240709.nc",'sst');
raw_sst0710 = ncread("oisst-avhrr-v02r01.20240710.nc",'sst');
raw_sst0711 = ncread("oisst-avhrr-v02r01.20240711.nc",'sst');
raw_sst0712 = ncread("oisst-avhrr-v02r01.20240712.nc",'sst');
raw_sst0713 = ncread("oisst-avhrr-v02r01.20240713.nc",'sst');
raw_sst0714 = ncread("oisst-avhrr-v02r01.20240714.nc",'sst');
raw_sst0715 = ncread("oisst-avhrr-v02r01.20240715.nc",'sst');
raw_sst0716 = ncread("oisst-avhrr-v02r01.20240716.nc",'sst');
raw_sst0717 = ncread("oisst-avhrr-v02r01.20240717.nc",'sst');
raw_sst0718 = ncread("oisst-avhrr-v02r01.20240718.nc",'sst');
raw_sst0719 = ncread("oisst-avhrr-v02r01.20240719.nc",'sst');
raw_sst0720 = ncread("oisst-avhrr-v02r01.20240720.nc",'sst');
raw_sst0721 = ncread("oisst-avhrr-v02r01.20240721.nc",'sst');
raw_sst0722 = ncread("oisst-avhrr-v02r01.20240722.nc",'sst');
raw_sst0723 = ncread("oisst-avhrr-v02r01.20240723.nc",'sst');
raw_sst0724 = ncread("oisst-avhrr-v02r01.20240724.nc",'sst');
raw_sst0725 = ncread("oisst-avhrr-v02r01.20240725.nc",'sst');
raw_sst0726 = ncread("oisst-avhrr-v02r01.20240726.nc",'sst');
raw_sst0727 = ncread("oisst-avhrr-v02r01.20240727.nc",'sst');
raw_sst0728 = ncread("oisst-avhrr-v02r01.20240728.nc",'sst');
raw_sst0729 = ncread("oisst-avhrr-v02r01.20240729.nc",'sst');
raw_sst0730 = ncread("oisst-avhrr-v02r01.20240730.nc",'sst');
raw_sst0731 = ncread("oisst-avhrr-v02r01.20240731.nc",'sst');

sst0603= raw_sst0603';
sst0604= raw_sst0604';
sst0605= raw_sst0605';
sst0606= raw_sst0606';
sst0607= raw_sst0607';
sst0608= raw_sst0608';
sst0609= raw_sst0609';
sst0610= raw_sst0610';
sst0611= raw_sst0611';
sst0612= raw_sst0612';
sst0613= raw_sst0613';
sst0614= raw_sst0614';
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
sst0720= raw_sst0720';
sst0721= raw_sst0721';
sst0722= raw_sst0722';
sst0723= raw_sst0723';
sst0724= raw_sst0724';
sst0725= raw_sst0725';
sst0726= raw_sst0726';
sst0727= raw_sst0727';
sst0728= raw_sst0728';
sst0729= raw_sst0729';
sst0730= raw_sst0730';
sst0731= raw_sst0731';

%% Twin Otter 1 NOAA

noaatemps(1,1) = sst0603(618,767);
noaatemps(2,1) = sst0604(616,767);
noaatemps(3,1) = sst0605(615,767);
noaatemps(4,1) = sst0606(614,767);
noaatemps(5,1) = sst0607(614,767);
noaatemps(6,1) = sst0608(614,767);
noaatemps(7,1) = sst0609(614,768);
noaatemps(8,1) = sst0610(613,769);
noaatemps(9,1) = sst0611(613,770);
noaatemps(10,1) = sst0612(613,770);
noaatemps(11,1) = sst0613(614,771);
noaatemps(12,1) = sst0614(614,772);
noaatemps(13,1) = sst0615(614,773);
noaatemps(14,1) = sst0616(614,773);
noaatemps(15,1) = sst0617(614,774);
noaatemps(16,1) = sst0618(614,774);
noaatemps(17,1) = sst0619(613,775);
noaatemps(18,1) = sst0620(613,775);
noaatemps(19,1) = sst0621(613,776);
noaatemps(20,1) = sst0622(613,777);
noaatemps(21,1) = sst0623(613,777);
noaatemps(22,1) = sst0624(612,778);
noaatemps(23,1) = sst0625(612,777);
noaatemps(24,1) = sst0626(612,778);
noaatemps(25,1) = sst0627(613,779);
noaatemps(26,1) = sst0628(614,781);
noaatemps(27,1) = sst0629(615,783);
noaatemps(28,1) = sst0630(615,784);
noaatemps(29,1) = sst0701(615,785);
noaatemps(30,1) = sst0702(615,787);
noaatemps(31,1) = sst0703(615,790);
noaatemps(32,1) = sst0704(616,791);
noaatemps(33,1) = sst0705(616,791);
noaatemps(34,1) = sst0706(617,792);
noaatemps(35,1) = sst0707(617,792);
noaatemps(36,1) = sst0708(617,792);
noaatemps(37,1) = sst0709(618,792);
noaatemps(38,1) = sst0710(618,792);
noaatemps(39,1) = sst0711(618,790);
noaatemps(40,1) = sst0712(618,788);
noaatemps(41,1) = sst0713(618,786);
noaatemps(42,1) = sst0714(618,785);
noaatemps(43,1) = sst0715(619,784);
noaatemps(44,1) = sst0716(618,782);
noaatemps(45,1) = sst0717(618,781);
noaatemps(46,1) = sst0718(618,781);
noaatemps(47,1) = sst0719(618,779);
noaatemps(48,1) = sst0720(618,779);
noaatemps(49,1) = sst0721(618,778);

noaatemps = noaatemps';

%% Twin Otter 1 Plot

slope = (tempmn1(1,50)-tempmn1(1,2))/(noaatemps(1,49)-noaatemps(1,1));
y=slope.* noaatemps;

figure(1)
grid on
scatter(noaatemps, tempmn1(1,2:50),'b','filled','o','LineWidth',2)
%xlim([-2 16]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Daily NOAA Temperatures vs Twin Otter #1 Temperatures from 06/03/24 to 07/21/24")
hold on
plot(noaatemps,y,'k','LineWidth',1)


%% Twin Otter 2 Buoy

file2 = 'C:\Users\m256048\Documents\APL\twin otter 2 2024\UpTempO_2024_02_NOAA-20240722.dat.txt';

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

%% Twin Otter 2 NOAA

noaatemps2(1,1) = sst0603(618,763);
noaatemps2(2,1) = sst0604(617,762);
noaatemps2(3,1) = sst0605(616,763);
noaatemps2(4,1) = sst0606(615,762);
noaatemps2(5,1) = sst0607(615,763);

%% Removing outliers

for i = 1:length(tempmn2)
    if tempmn2(i)>100
      tempmn2(i) = NaN;
    end
end

noaatemps2 = noaatemps2';
slope2 = (tempmn2(1,6)-tempmn2(1,2))/(noaatemps2(1,5)-noaatemps2(1,1));
y2=slope2.* noaatemps2;

figure(2)
grid on
scatter(noaatemps2, tempmn2(1,2:6),'k','filled','o','LineWidth',2)
xlim([-2 0]);
ylim([-2 0]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Daily NOAA Temperatures vs Twin Otter #2 Temperatures from 06/03/24 to 06/07/24")
hold on
plot(noaatemps2,y2,'m','LineWidth',1)

%% TO 2 Stats

buoy2mean = mean(tempmn2(1,2:6)); 
buoy2std = std(tempmn2(1,2:6)); 
noaa2mean = mean(noaatemps2); 
noaa2std = std(noaatemps2); % 

%% Twin Otter 3 Buoy

file3 = 'C:\Users\m256048\Documents\APL\twin otter 3 2024\UpTempO_2024_03_NOAA-FINAL.dat.txt';

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

%% Twin Otter 3 NOAA

noaatemps3(1,1) = sst0603(619,757);
noaatemps3(1,2) = sst0604(618,758);

%% Twin Otter 3 Plot

figure(3)
grid on
scatter(noaatemps3, tempmn3(1,2:3),'k','filled','o','LineWidth',2)
xlim([-2 0]);
ylim([-2 0]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Daily NOAA Temperatures vs Twin Otter #3 Temperatures from 06/03/24 to 06/04/24")

%% TO 3 Stats

buoy3mean = mean(tempmn3(1,2:3)); 
buoy3std = std(tempmn3(1,2:3)); 
noaa3mean = mean(noaatemps3); 
noaa3std = std(noaatemps3); % 

%% Twin Otter 4 Buoy

file4 = 'C:\Users\m256048\Documents\APL\twin otter 4 2024\UpTempO_2024_04_NOAA-20240722.dat.txt';

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

noaatemps4(1,1) = sst0603(619,760); %COLUMN 2
noaatemps4(2,1) = sst0604(617,762); % COLUMN 3
noaatemps4(3,1) = sst0605(616,763); % COLUMN 4 etc
noaatemps4(4,1) = sst0606(615,762);
noaatemps4(5,1) = sst0607(615,763);
noaatemps4(6,1) = sst0608(616, 760);
noaatemps4(7,1) = sst0609(615, 761);
noaatemps4(8,1) = sst0610(615, 761);
noaatemps4(9,1) = sst0611(615, 762);
noaatemps4(10,1) = sst0612(615, 763);
noaatemps4(11,1) = sst0613(615, 764);
noaatemps4(12,1) = sst0614(615, 765);
noaatemps4(13,1) = sst0615(616, 766);
noaatemps4(14,1) = sst0616(616, 767);
noaatemps4(15,1) = sst0617(616, 769);
noaatemps4(16,1) = sst0618(616, 770);
noaatemps4(17,1) = sst0619(615, 770);
noaatemps4(18,1) = sst0620(615, 770);
noaatemps4(19,1) = sst0621(616, 771);
noaatemps4(20,1) = sst0622(616, 772);
noaatemps4(21,1) = sst0623(615, 772);
noaatemps4(22,1) = sst0624(615, 772);
noaatemps4(23,1) = sst0625(615, 772);
noaatemps4(24,1) = sst0626(615, 772);
noaatemps4(25,1) = sst0627(615, 772);
noaatemps4(26,1) = sst0628(616, 772);
noaatemps4(27,1) = sst0629(616, 772);
noaatemps4(28,1) = sst0630(617, 772);
noaatemps4(29,1) = sst0701(617, 772);
noaatemps4(30,1) = sst0702(617, 772);
noaatemps4(31,1) = sst0703(618, 774);
noaatemps4(32,1) = sst0704(619, 773);
noaatemps4(33,1) = sst0705(621, 772);
noaatemps4(34,1) = sst0706(622, 770);
noaatemps4(35,1) = sst0707(623, 767);
noaatemps4(36,1) = sst0708(625, 767);
noaatemps4(37,1) = sst0709(626, 767);
noaatemps4(38,1) = sst0710(626, 767);
noaatemps4(39,1) = sst0711(626, 767);
noaatemps4(40,1) = sst0712(627, 767);
noaatemps4(41,1) = sst0713(628, 766);
noaatemps4(42,1) = sst0714(629, 767);
noaatemps4(43,1) = sst0715(629, 767);
noaatemps4(44,1) = sst0716(628, 767);
noaatemps4(45,1) = sst0717(628, 768);
noaatemps4(46,1) = sst0718(628, 770);
noaatemps4(47,1) = sst0719(629, 773);
noaatemps4(48,1) = sst0720(630, 775);
noaatemps4(49,1) = sst0721(631, 777);

%% Removing outliers

for i = 1:length(tempmn4)
    if tempmn4(i)>100
      tempmn4(i) = NaN;
    end
end

%% Twin otter 4 plot

noaatemps4 = noaatemps4';
slope4 = (tempmn4(1,50)-tempmn4(1,2))/(noaatemps4(1,49)-noaatemps4(1,1));
y4=slope4.* noaatemps4;

figure(4)
grid on
scatter(noaatemps4, tempmn4(1,2:50),'green','filled','o','LineWidth',2)
xlim([-2 12]);
ylim([-2 12]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Daily NOAA Temperatures vs Twin Otter #4 Temperatures from 06/03/24 to 07/21/24")
hold on
plot(noaatemps4,y4,'m','LineWidth',1)

%% TO 4 Stats

buoy4mean = nanmean(tempmn4(1,2:50)); 
buoy4std = nanstd(tempmn4(1,2:50)); 
noaa4mean = mean(noaatemps4); 
noaa4std = std(noaatemps4); % 

%% Twin Otter 5 Buoy

file5 = 'C:\Users\m256048\Documents\APL\twin otter 5 2024\UpTempO_2024_05_NOAA-FINAL.dat.txt';

data5 = readmatrix(file5);
year5 = data5(:,1);
month5 = data5(:,2);
day5 = data5(:,3);
hour5 = data5(:,4);

time5 = datenum(year5,month5,day5,hour5,0,0);

dateu5 = unique([year5 month5 day5],'rows');  % where the first col of dateu is year, the second month, third day
%timeu = datenum(dateu(1,:)),datenum(dateu(:,2)),datenum(dateu(:,3));  % this could be the time vector you plot your averages against

for k = 1:length(dateu5)
    indd5 = find(year5==dateu5(k,1) & month5==dateu5(k,2) & day5==dateu5(k,3));
    latmn5(k) = mean(data5(indd5,5));
    lonmn5(k) = mean(data5(indd5,6));
    tempmn5(k) = mean(data5(indd5,7)); % use 

end
lonmn5 = 360+ lonmn5;

%% Removing outliers

for i = 1:length(tempmn5)
    if tempmn5(i)>100
      tempmn5(i) = NaN;
    end
end

%% Twin Otter 5 NOAA

noaatemps5(1,1) = sst0603(618,765); %COLUMN 2
noaatemps5(1,2) = sst0604(617,765);
noaatemps5(1,3) = sst0605(616,765); %4
noaatemps5(1,4) = sst0606(615,765);
noaatemps5(1,5) = sst0607(614,765);
noaatemps5(1,6) = sst0608(614,766);
noaatemps5(1,7) = sst0609(614,767);
noaatemps5(1,8) = sst0610(614,768);
noaatemps5(1,9) = sst0611(613,769);
noaatemps5(1,10) = sst0612(613,770);
noaatemps5(1,11) = sst0613(613,770);
noaatemps5(1,12) = sst0614(614,770);
noaatemps5(1,13) = sst0615(615,771);
noaatemps5(1,14) = sst0616(615,772);
noaatemps5(1,15) = sst0617(614,773);
noaatemps5(1,16) = sst0618(614,773);
noaatemps5(1,17) = sst0619(614,774);
noaatemps5(1,18) = sst0620(614,774);
noaatemps5(1,19) = sst0621(614,774);
noaatemps5(1,20) = sst0622(614,775);
noaatemps5(1,21) = sst0623(613,776);
noaatemps5(1,22) = sst0624(613,776);
noaatemps5(1,23) = sst0625(613,776);
noaatemps5(1,24) = sst0626(613,776);
noaatemps5(1,25) = sst0627(614,777);
noaatemps5(1,26) = sst0628(615,778);
noaatemps5(1,27) = sst0629(615,778);
noaatemps5(1,28) = sst0630(616,777); % column 29
noaatemps5(1,29) = sst0701(616,777); % 30
noaatemps5(1,30) = sst0702(616,778); % 31
noaatemps5(1,31) = sst0703(616,779); % 32
noaatemps5(1,32) = sst0704(617,779); %33
noaatemps5(1,33) = sst0705(618,777);%34
noaatemps5(1,34) = sst0706(619,775);%35
noaatemps5(1,35) = sst0707(619,775);%36
noaatemps5(1,36) = sst0708(619,773);%37
noaatemps5(1,37) = sst0709(619,773);%38
noaatemps5(1,38) = sst0710(619,773);%39
noaatemps5(1,39) = sst0711(619,772);%40
noaatemps5(1,40) = sst0712(620,771);%41
noaatemps5(1,41) = sst0713(621,769);%42
noaatemps5(1,42) = sst0714(623,768);%43
noaatemps5(1,43) = sst0715(623,768);%44
noaatemps5(1,44) = sst0716(623,768);%45
noaatemps5(1,45) = sst0717(623,767);%46
noaatemps5(1,46) = sst0718(625,769);%47
noaatemps5(1,47) = sst0719(626,772);%48
noaatemps5(1,48) = sst0720(627,775);%49
noaatemps5(1,49) = sst0721(628,777);%50
noaatemps5(1,50) = sst0722(628,778);%51
noaatemps5(1,51) = sst0723(628,779);%52
noaatemps5(1,52) = sst0724(628,779);%53
noaatemps5(1,53) = sst0725(628,780);%54
noaatemps5(1,54) = sst0726(628,781);%55
noaatemps5(1,55) = sst0727(628,783);%56
noaatemps5(1,56) = sst0728(628,784);%57
noaatemps5(1,57) = sst0729(628,783);%58
noaatemps5(1,58) = sst0730(627,783);%59
noaatemps5(1,59) = sst0731(627,782);%60

%% Twin otter 5 plot

slope5 = (tempmn5(1,60)-tempmn5(1,2))/(noaatemps5(1,59)-noaatemps5(1,1));
y5=slope5.* noaatemps5;

figure(5)
grid on
scatter(noaatemps5, tempmn5(1,2:60),'green','filled','o','LineWidth',2)
xlim([-2 12]);
ylim([-2 12]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Daily NOAA Temperatures vs Twin Otter #5 Temperatures from 06/03/24 to 07/31/24")
hold on
plot(noaatemps5,y5,'m','LineWidth',1)

%% TO 5 Stats

buoy5mean = nanmean(tempmn5(1,2:60)); 
buoy5std = nanstd(tempmn5(1,2:60)); 
noaa5mean = mean(noaatemps5); 
noaa5std = std(noaatemps5); % 

%% Twin Otter 6 Buoy

file6 = 'C:\Users\m256048\Documents\APL\twin otter 6 2024\UTO_2024-06_300434064969860_L2.dat.txt';

data6 = readmatrix(file6);
year6 = data6(:,1);
month6 = data6(:,2);
day6 = data6(:,3);
hour6 = data6(:,4);

time6 = datenum(year6,month6,day6,hour6,0,0);

dateu6 = unique([year6 month6 day6],'rows');  % where the first col of dateu is year, the second month, third day
%timeu = datenum(dateu(1,:)),datenum(dateu(:,2)),datenum(dateu(:,3));  % this could be the time vector you plot your averages against

for k = 1:length(dateu6)
    indd6 = find(year6==dateu6(k,1) & month6==dateu6(k,2) & day6==dateu6(k,3));
    latmn6(k) = mean(data6(indd6,5));
    lonmn6(k) = mean(data6(indd6,6));
    tempmn6(k) = mean(data6(indd6,7)); % use 

end
lonmn6 = 360+ lonmn6;

%% Removing outliers

for i = 1:length(tempmn6)
    if tempmn6(i)>100
      tempmn6(i) = NaN;
    end
end

%% Twin Otter 6 NOAA

noaatemps6(1,1) = sst0603(619,770); %COLUMN 2
noaatemps6(1,2) = sst0604(617,770);
noaatemps6(1,3) = sst0605(615,771); %4
noaatemps6(1,4) = sst0606(615,770); 
noaatemps6(1,5) = sst0607(614,769); 
noaatemps6(1,6) = sst0608(614,769); 
noaatemps6(1,7) = sst0609(614,768); 
noaatemps6(1,8) = sst0610(614,769); 
noaatemps6(1,9) = sst0611(613,769); 
noaatemps6(1,10) = sst0612(613,770);
noaatemps6(1,11) = sst0613(614,770); 
noaatemps6(1,12) = sst0614(614,770); 
noaatemps6(1,13) = sst0615(615,771); 
noaatemps6(1,14) = sst0616(615,772); 
noaatemps6(1,15) = sst0617(614,773); 
noaatemps6(1,16) = sst0618(614,773); 
noaatemps6(1,17) = sst0619(614,774); 
noaatemps6(1,18) = sst0620(614,774); 
noaatemps6(1,19) = sst0621(614,774); 
noaatemps6(1,20) = sst0622(614,775); 
noaatemps6(1,21) = sst0623(613,775); 
noaatemps6(1,22) = sst0624(613,776); 
noaatemps6(1,23) = sst0625(613,776); 
noaatemps6(1,24) = sst0626(613,776); 
noaatemps6(1,25) = sst0627(614,778);
noaatemps6(1,26) = sst0628(615,778);
noaatemps6(1,27) = sst0629(616,778);
noaatemps6(1,28) = sst0630(616,777);
noaatemps6(1,29) = sst0701(616,777); % 30
noaatemps6(1,30) = sst0702(616,778); % 31
noaatemps6(1,31) = sst0703(617,779); %%%%
noaatemps6(1,32) = sst0704(617,778);
noaatemps6(1,33) = sst0705(618,775);
noaatemps6(1,34) = sst0706(619,773);
noaatemps6(1,35) = sst0707(619,774);
noaatemps6(1,36) = sst0708(620,774);
noaatemps6(1,37) = sst0709(620,773);
noaatemps6(1,38) = sst0710(620,773);
noaatemps6(1,39) = sst0711(619,773);
noaatemps6(1,40) = sst0712(620,772);
noaatemps6(1,41) = sst0713(621,771);
noaatemps6(1,42) = sst0714(622,771);
noaatemps6(1,43) = sst0715(621,771);
noaatemps6(1,44) = sst0716(621,772);
noaatemps6(1,45) = sst0717(621,772);
noaatemps6(1,46) = sst0718(622,772);


%% Twin otter 6 plot

slope6 = (tempmn6(1,47)-tempmn6(1,2))/(noaatemps6(1,46)-noaatemps6(1,1)); 
y6=slope6.* noaatemps6;

figure(6)
scatter(noaatemps6, tempmn6(1,2:47),'green','filled','o','LineWidth',2)
%xlim([-2 12]);
%ylim([-2 12]);
grid on
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Daily NOAA Temperatures vs Twin Otter #6 Temperatures from 06/03/24 to 07/30/24")
hold on
plot(noaatemps6,y6,'m','LineWidth',1)

%% TO 6 Stats

buoy6mean = nanmean(tempmn6(1,2:47)); 
buoy6std = nanstd(tempmn6(1,2:47)); 
noaa6mean = nanmean(noaatemps6); 
noaa6std = nanstd(noaatemps6); % 

%% Overall Graph

p = -2:1:14;

figure(7)
scatter(noaatemps, tempmn1(1,2:50),'k','filled','o','LineWidth',2)
grid on
hold on
scatter(noaatemps6, tempmn6(1,2:47),'k','filled','o','LineWidth',2)
hold on
scatter(noaatemps5, tempmn5(1,2:60),'k','filled','o','LineWidth',2)
hold on
scatter(noaatemps4, tempmn4(1,2:50),'k','filled','o','LineWidth',2)
hold on
scatter(noaatemps2, tempmn2(1,2:6),'k','filled','o','LineWidth',2)
hold on
scatter(noaatemps3, tempmn3(1,2:3),'k','filled','o','LineWidth',2)
hold on 
plot(p,p, 'LineWidth',3)
xlim([-2 14]);
ylim([-2 14]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Daily NOAA Temperatures vs Twin Otter Temperatures from 2024")

%scatter(noaatemps, tempmn1(1,2:50),'b','filled','o','LineWidth',2)
%hold on
%scatter(noaatemps6, tempmn6(1,2:59),'yellow','filled','o','LineWidth',2)
%hold on
%scatter(noaatemps5, tempmn5(1,2:60),'cyan','filled','o','LineWidth',2)
%hold on
%scatter(noaatemps4, tempmn4(1,2:50),'green','filled','o','LineWidth',2)
%hold on
%scatter(noaatemps2, tempmn2(1,2:6),'k','filled','o','LineWidth',2)
%hold on
%scatter(noaatemps3, tempmn3(1,2:3),'magenta','filled','o','LineWidth',2)

%% Data together

both(1,1:49) = noaatemps(1,:);
both(1,50:54) = noaatemps2(1,:);
both(1,55:56) = noaatemps3(1,:);
both(1,57:105) = noaatemps4(1,:);
both(1,106:164) = noaatemps5(1,:);
both(1,165:210) = noaatemps6(1,:);
both(2,1:49) = tempmn1(1,2:50);
both(2,50:54) = tempmn2(1,2:6);
both(2,55:56) = tempmn3(1,2:3);
both(2,57:105) = tempmn4(1,2:50);
both(2,106:164) = tempmn5(1,2:60);
both(2,165:210) = tempmn6(1,2:47);

%%

columns_less_than_2 = both(1, :) < 2;
range1 = both(1, :) < -1.5 & both(1, :) >= -2;
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
range21 = both(1, :) < 8.5 & both(1, :) >= 8.0;
range22 = both(1, :) < 9.0 & both(1, :) >= 8.5;
range23 = both(1, :) < 9.5 & both(1, :) >= 9.0;
range24 = both(1, :) < 10.0 & both(1, :) >= 9.5;
range25 = both(1, :) < 10.5 & both(1, :) >= 10.0;
range26 = both(1, :) < 11.0 & both(1, :) >= 10.5;
range27 = both(1, :) < 11.5 & both(1, :) >= 11.0;
range28 = both(1, :) < 12.0 & both(1, :) >= 11.5;

if any(range1)
    % Calculate the average of the second row values for those columns
    avg(1,1) = nanmean(both(2, range1));
end

% Check if there are any columns that meet the condition
if any(range2)
    % Calculate the average of the second row values for those columns
    avg(1,2) = nanmean(both(2, range2));
end

if any(range3)
    % Calculate the average of the second row values for those columns
    avg(1,3) = nanmean(both(2, range3));
end

if any(range4)
    avg(1,4) = nanmean(both(2, range4));
end

if any(range5)
    avg(1,5) = nanmean(both(2, range5));
end

if any(range6)
    avg(1,6) = nanmean(both(2, range6));
end
if any(range7)
    avg(1,7) = nanmean(both(2, range7));
end
if any(range8)
    avg(1,8) = nanmean(both(2, range8));
end
if any(range9)
    avg(1,9) = nanmean(both(2, range9));
end
if any(range10)
    avg(1,10) = nanmean(both(2, range10));
end
if any(range11)
    avg(1,11) = nanmean(both(2, range11));
end
if any(range12)
    avg(1,12) = nanmean(both(2, range12));
end
if any(range13)
    avg(1,13) = nanmean(both(2, range13));
end
if any(range14)
    avg(1,14) = nanmean(both(2, range14));
end
if any(range15)
    avg(1,15) = nanmean(both(2, range15));
end
if any(range16)
    avg(1,16) = nanmean(both(2, range16));
end
if any(range17)
    avg(1,17) = nanmean(both(2, range17));
end
if any(range18)
    avg(1,18) = nanmean(both(2, range18));
end
if any(range19)
    avg(1,19) = nanmean(both(2, range19));
end
if any(range20)
    avg(1,20) = nanmean(both(2, range20));
end
if any(range21)
    avg(1,21) = nanmean(both(2, range21));
end
if any(range22)
    avg(1,22) = nanmean(both(2, range22));
end
if any(range23)
    avg(1,23) = nanmean(both(2, range23));
end
if any(range24)
    avg(1,24) = nanmean(both(2, range24));
end
if any(range25)
    avg(1,25) = nanmean(both(2, range25));
end
if any(range26)
    avg(1,26) = nanmean(both(2, range26));
end
if any(range27)
    avg(1,27) = nanmean(both(2, range27));
end
if any(range28)
    avg(1,28) = nanmean(both(2, range28));
end

matrix = -1.75:0.5:12;

%% Bin plot

figure(10)
scatter(matrix, avg,'k','filled','o','LineWidth',2)
hold on
plot(p,p, 'LineWidth',3)
ylim([-2 12]);
grid on
xlabel('Temperature (^oC)')
ylabel('Bin Average of Buoys(^oC)')
title('Twin Otter Buoys Averaged at 0.5^oC Bins')
%legend('Twin Otter Average', 'NOAA Average', 'location','northwest')

%% Overall plot with bin averaged

lightGray = [0.7, 0.7, 0.7];

figure(11)
scatter(noaatemps, tempmn1(1,2:50), 30, lightGray,'filled','o')
grid on
hold on
scatter(noaatemps6, tempmn6(1,2:47), 30, lightGray,'filled','o')
hold on
scatter(noaatemps5, tempmn5(1,2:60), 30, lightGray,'filled','o')
hold on
scatter(noaatemps4, tempmn4(1,2:50), 30, lightGray,'filled','o')
hold on
scatter(noaatemps2, tempmn2(1,2:6), 30, lightGray,'filled','o')
hold on
scatter(noaatemps3, tempmn3(1,2:3), 30, lightGray,'filled','o')
hold on 
plot(p,p, 'LineWidth',3)
hold on
scatter(matrix, avg,'k','filled','o','LineWidth',2)
xlim([-2 12]);
%ylim([-2 12]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Buoy Data Averaged at 0.5^oC Bins and Daily NOAA Temperatures vs Twin Otter Temperatures from 2024")

%% Bin averaging - One Vector

% Find the maximum length
len1 = length(noaatemps);
len2 = length(noaatemps2);
len3 = length(noaatemps3);
len4 = length(noaatemps4);
len5 = length(noaatemps5);
len6 = length(noaatemps6);
maxLen = max([len1, len2, len3, len4, len5, len6]);

% Pad vectors with NaN
n1_padded = [noaatemps, (NaN(maxLen - len1, 1))'];
n2_padded = [noaatemps2, (NaN(maxLen - len2, 1))'];
n3_padded = [noaatemps3, (NaN(maxLen - len3, 1))'];
n4_padded = [noaatemps4, (NaN(maxLen - len4, 1))'];
n5_padded = [noaatemps5, (NaN(maxLen - len5, 1))'];
n6_padded = [noaatemps6, (NaN(maxLen - len6, 1))'];

% Concatenate as rows
NOAA = [n1_padded; n2_padded; n3_padded;n4_padded;n5_padded;n6_padded;];

% Find the maximum length
blen1 = length(tempmn1);
blen2 = length(tempmn2);
blen3 = length(tempmn3);
blen4 = length(tempmn4);
blen5 = length(tempmn5);
blen6 = length(tempmn6);
bmaxLen = max([blen1, blen2, blen3, blen4, blen5, blen6]);

% Pad vectors with NaN
b1_padded = [tempmn1, (NaN(bmaxLen - blen1, 1))'];
b2_padded = [tempmn2, (NaN(bmaxLen - blen2, 1))'];
b3_padded = [tempmn3, (NaN(bmaxLen - blen3, 1))'];
b4_padded = [tempmn4, (NaN(bmaxLen - blen4, 1))'];
b5_padded = [tempmn5, (NaN(bmaxLen - blen5, 1))'];
b6_padded = [tempmn6, (NaN(bmaxLen - blen6, 1))'];

% Concatenate as rows
BUOY = [b1_padded; b2_padded; b3_padded;b4_padded;b5_padded;b6_padded;]; %ONLY PLOT 2:59

%% Bin Averaging - actual averaging

% Create a logical index for values less than -1.5
logicalIndexB1 = BUOY < -1.5 & BUOY >= -2;

% Extract values that are less than -1.5
valuesToAverageB1 = BUOY(logicalIndexB1);

% Calculate the average if there are values to average
averageValueB(1,1) = mean(valuesToAverageB1);

logicalIndexB2 = BUOY < -1.0 & BUOY >= -1.5;
logicalIndexB3 = BUOY < -0.5 & BUOY >= -1.0;
logicalIndexB4 = BUOY < 0.0 & BUOY >= -0.5;
logicalIndexB5 = BUOY < 0.5 & BUOY >= 0;
logicalIndexB6 = BUOY < 1.0 & BUOY >= 0.5;
logicalIndexB7 = BUOY < 1.5 & BUOY >= 1;
logicalIndexB8 = BUOY < 2.0 & BUOY >= 1.5;

valuesToAverageB2 = BUOY(logicalIndexB2);
valuesToAverageB3 = BUOY(logicalIndexB3);
valuesToAverageB4 = BUOY(logicalIndexB4);
valuesToAverageB5 = BUOY(logicalIndexB5);
valuesToAverageB6 = BUOY(logicalIndexB6);
valuesToAverageB7 = BUOY(logicalIndexB7);
valuesToAverageB8 = BUOY(logicalIndexB8);

averageValueB(1,2) = mean(valuesToAverageB2);
averageValueB(1,3) = mean(valuesToAverageB3);
averageValueB(1,4) = mean(valuesToAverageB4);
averageValueB(1,5) = mean(valuesToAverageB5);
averageValueB(1,6) = mean(valuesToAverageB6);
averageValueB(1,7) = mean(valuesToAverageB7);
averageValueB(1,8) = mean(valuesToAverageB8);
averageValueB(1,9) = mean(BUOY(BUOY < 2.5 & BUOY >= 2.0));
averageValueB(1,10) = mean(BUOY(BUOY < 3.0 & BUOY >= 2.5));
averageValueB(1,11) = mean(BUOY(BUOY < 3.5 & BUOY >= 3.0));
averageValueB(1,12) = mean(BUOY(BUOY < 4.0 & BUOY >= 3.5));
averageValueB(1,13) = mean(BUOY(BUOY < 4.5 & BUOY >= 4.0));
averageValueB(1,14) = mean(BUOY(BUOY < 5.0 & BUOY >= 4.5));
averageValueB(1,15) = mean(BUOY(BUOY < 5.5 & BUOY >= 5.0));
averageValueB(1,16) = mean(BUOY(BUOY < 6.0 & BUOY >= 5.5));
averageValueB(1,17) = mean(BUOY(BUOY < 6.5 & BUOY >= 6.0));
averageValueB(1,18) = mean(BUOY(BUOY < 7.0 & BUOY >= 6.5));
averageValueB(1,19) = mean(BUOY(BUOY < 7.5 & BUOY >= 7.0));
averageValueB(1,20) = mean(BUOY(BUOY < 8.0 & BUOY >= 7.5));
averageValueB(1,21) = mean(BUOY(BUOY < 8.5 & BUOY >= 8.0));
averageValueB(1,22) = mean(BUOY(BUOY < 9.0 & BUOY >= 8.5));
averageValueB(1,23) = mean(BUOY(BUOY < 9.5 & BUOY >= 9.0));
averageValueB(1,24) = mean(BUOY(BUOY < 10.0 & BUOY >= 9.5));
averageValueB(1,25) = mean(BUOY(BUOY < 10.5 & BUOY >= 10.0));
averageValueB(1,26) = mean(BUOY(BUOY < 11.0 & BUOY >= 10.5));
averageValueB(1,27) = mean(BUOY(BUOY < 11.5 & BUOY >= 11.0));
averageValueB(1,28) = mean(BUOY(BUOY < 12.0 & BUOY >= 11.5));

%{
logicalIndexN1 = NOAA < -1.5 & NOAA >= -2;
logicalIndexN2 = NOAA < -1.0 & NOAA >= -1.5;
logicalIndexN3 = NOAA < -0.5 & NOAA >= -1.0;
logicalIndexN4 = NOAA < 0.0 & NOAA >= -0.5;
logicalIndexN5 = NOAA < 0.5 & NOAA >= 0;
logicalIndexN6 = NOAA < 1.0 & NOAA >= 0.5;
logicalIndexN7 = NOAA < 1.5 & NOAA >= 1;
logicalIndexN8 = NOAA < 2.0 & NOAA >= 1.5;

valuesToAverageN1 = NOAA(logicalIndexN1);
valuesToAverageN2 = NOAA(logicalIndexN2);
valuesToAverageN3 = NOAA(logicalIndexN3);
valuesToAverageN4 = NOAA(logicalIndexN4);
valuesToAverageN5 = NOAA(logicalIndexN5);
valuesToAverageN6 = NOAA(logicalIndexN6);
valuesToAverageN7 = NOAA(logicalIndexN7);
valuesToAverageN8 = NOAA(logicalIndexN8);

averageValueN(1,1) = mean(valuesToAverageN1);
averageValueN(1,2) = mean(valuesToAverageN2);
averageValueN(1,3) = mean(valuesToAverageN3);
averageValueN(1,4) = mean(valuesToAverageN4);
averageValueN(1,5) = mean(valuesToAverageN5);
averageValueN(1,6) = mean(valuesToAverageN6);
averageValueN(1,7) = mean(valuesToAverageN7);
averageValueN(1,8) = mean(valuesToAverageN8);
averageValueN(1,9) = mean(NOAA(NOAA < 2.5 & NOAA >= 2.0));
averageValueN(1,10) = mean(NOAA(NOAA < 3.0 & NOAA >= 2.5));
averageValueN(1,11) = mean(NOAA(NOAA < 3.5 & NOAA >= 3.0));
averageValueN(1,12) = mean(NOAA(NOAA < 4.0 & NOAA >= 3.5));
averageValueN(1,13) = mean(NOAA(NOAA < 4.5 & NOAA >= 4.0));
averageValueN(1,14) = mean(NOAA(NOAA < 5.0 & NOAA >= 4.5));
averageValueN(1,15) = mean(NOAA(NOAA < 5.5 & NOAA >= 5.0));
averageValueN(1,16) = mean(NOAA(NOAA < 6.0 & NOAA >= 5.5));
averageValueN(1,17) = mean(NOAA(NOAA < 6.5 & NOAA >= 6.0));
averageValueN(1,18) = mean(NOAA(NOAA < 7.0 & NOAA >= 6.5));
averageValueN(1,19) = mean(NOAA(NOAA < 7.5 & NOAA >= 7.0));
averageValueN(1,20) = mean(NOAA(NOAA < 8.0 & NOAA >= 7.5));
averageValueN(1,21) = mean(NOAA(NOAA < 8.5 & NOAA >= 8.0));
averageValueN(1,22) = mean(NOAA(NOAA < 9.0 & NOAA >= 8.5));
averageValueN(1,23) = mean(NOAA(NOAA < 9.5 & NOAA >= 9.0));
averageValueN(1,24) = mean(NOAA(NOAA < 10.0 & NOAA >= 9.5));
averageValueN(1,25) = mean(NOAA(NOAA < 10.5 & NOAA >= 10.0));
averageValueN(1,26) = mean(NOAA(NOAA < 11.0 & NOAA >= 10.5));
averageValueN(1,27) = mean(NOAA(NOAA < 11.5 & NOAA >= 11.0));
averageValueN(1,28) = mean(NOAA(NOAA < 12.0 & NOAA >= 11.5));

matrix = -1.75:0.5:12;

%% Bin plot - TRASH

figure(8)
scatter(matrix, averageValueB,'k','filled','o','LineWidth',2)
hold on
scatter(matrix, averageValueN,'c','filled','o','LineWidth',2)
grid on
xlim([-2 12]);
xlabel('Temperature (^oC)')
ylabel('Bin Average (^oC)')
title('Twin Otter and NOAA Averaged at 0.5^oC Bins')
legend('Twin Otter Average', 'NOAA Average', 'location','northwest')
%} 

%% Correlation

corr = corrcoef(avg,averageValueB); 
corr1 = corrcoef(avg(1,1:8),averageValueB(1,1:8));
corr2 = corrcoef(avg(1,2:9),averageValueB(1,2:9));
corr3 = corrcoef(avg(1,3:10),averageValueB(1,3:10));
corr4 = corrcoef(avg(1,4:11),averageValueB(1,4:11));
corr5 = corrcoef(avg(1,5:12),averageValueB(1,5:12));
corr6 = corrcoef(avg(1,6:13),averageValueB(1,6:13));
corr7 = corrcoef(avg(1,7:14),averageValueB(1,7:14));
corr8 = corrcoef(avg(1,8:15),averageValueB(1,8:15));
corr9 = corrcoef(avg(1,9:16),averageValueB(1,9:16));
corr10 = corrcoef(avg(1,10:17),averageValueB(1,10:17));
corr11 = corrcoef(avg(1,11:18),averageValueB(1,11:18));
corr12 = corrcoef(avg(1,12:19),averageValueB(1,12:19));
corr13 = corrcoef(avg(1,13:20),averageValueB(1,13:20));
corr14 = corrcoef(avg(1,14:21),averageValueB(1,14:21));
corr15 = corrcoef(avg(1,15:22),averageValueB(1,15:22));
corr16 = corrcoef(avg(1,16:23),averageValueB(1,16:23));
corr17 = corrcoef(avg(1,17:24),averageValueB(1,17:24));
corr18 = corrcoef(avg(1,18:25),averageValueB(1,18:25));
corr19 = corrcoef(avg(1,19:26),averageValueB(1,19:26));
corr20 = corrcoef(avg(1,20:27),averageValueB(1,20:27));
corr21 = corrcoef(avg(1,21:28),averageValueB(1,21:28));

correlation(1,1) = corr1(1,2);
correlation(1,2) = corr2(1,2);
correlation(1,3) = corr3(1,2);
correlation(1,4) = corr4(1,2);
correlation(1,5) = corr5(1,2);
correlation(1,6) = corr6(1,2);
correlation(1,7) = corr7(1,2);
correlation(1,8) = corr8(1,2);
correlation(1,9) = corr9(1,2);
correlation(1,10) = corr10(1,2);
correlation(1,11) = corr11(1,2);
correlation(1,12) = corr12(1,2);
correlation(1,13) = corr13(1,2);
correlation(1,14) = corr14(1,2);
correlation(1,15) = corr15(1,2);
correlation(1,16) = corr16(1,2);
correlation(1,17) = corr17(1,2);
correlation(1,18) = corr18(1,2);
correlation(1,19) = corr19(1,2);
correlation(1,20) = corr20(1,2);
correlation(1,21) = corr21(1,2);

x_corr = 0:0.5:10;

figure(9)
scatter(x_corr,correlation,'r','filled','o','LineWidth',2)
grid on
xlim([-0.5 10.5]);
ylim([0.86 1]);
xlabel('Temperature (^oC)')
ylabel('Correlation')
%title('Correlation Between Twin Otter and NOAA 0.5^oC Bin Averages')

% avg is the mean of buoy data where NOAA was 0.5 bin avergaged, while
% averagevalueB was average of 0.5 bins of straight buoy data

%% Histogram

categories = {'-2^oC - -1.5^oC', '', '-1^oC - -0.5^oC', '', '0^oC - 0.5^oC', '', '1^oC - 1.5^oC', '', '2^oC - 2.5^oC', '', '3^oC - 3.5^oC', '', '4^oC - 4.5^oC', '', '5^oC - 5.5^oC', '', '6^oC - 6.5^oC', '', '7^oC - 7.5^oC', '', '8^oC - 8.5^oC', '', '9^oC - 9.5^oC', '', '10^oC - 10.5^oC', '', '11^oC - 11.5^oC', ''};
histo = [sum(range1) sum(range2) sum(range3) sum(range4) sum(range5) sum(range6) sum(range7) sum(range8) sum(range9) sum(range10) sum(range11) sum(range12) sum(range13) sum(range14) sum(range15) sum(range16) sum(range17) sum(range18) sum(range19) sum(range20) sum(range21) sum(range22) sum(range23) sum(range24) sum(range25) sum(range26) sum(range27) sum(range28)];
figure(12)
bar(histo)
hold on
set(gca, 'XTick', 1:length(categories), 'XTickLabel', categories); % Set the x-axis labels
xtickangle(45);
grid on
ylabel('Amount of Data Points in Each Bin')

sum_histo = sum(histo);

%% median instead of mean

if any(range1)
    med(1,1) = nanmedian(both(2, range1));
end

if any(range2)
    med(1,2) = nanmedian(both(2, range2));
end

if any(range3)
    med(1,3) = nanmedian(both(2, range3));
end

if any(range4)
    med(1,4) = nanmedian(both(2, range4));
end

if any(range5)
    med(1,5) = nanmedian(both(2, range5));
end

if any(range6)
    med(1,6) = nanmedian(both(2, range6));
end
if any(range7)
    med(1,7) = nanmedian(both(2, range7));
end
if any(range8)
    med(1,8) = nanmedian(both(2, range8));
end
if any(range9)
    med(1,9) = nanmedian(both(2, range9));
end
if any(range10)
    med(1,10) = nanmedian(both(2, range10));
end
if any(range11)
    med(1,11) = nanmedian(both(2, range11));
end
if any(range12)
    med(1,12) = nanmedian(both(2, range12));
end
if any(range13)
    med(1,13) = nanmedian(both(2, range13));
end
if any(range14)
    med(1,14) = nanmedian(both(2, range14));
end
if any(range15)
    med(1,15) = nanmedian(both(2, range15));
end
if any(range16)
    med(1,16) = nanmedian(both(2, range16));
end
if any(range17)
    med(1,17) = nanmedian(both(2, range17));
end
if any(range18)
    med(1,18) = nanmedian(both(2, range18));
end
if any(range19)
    med(1,19) = nanmedian(both(2, range19));
end
if any(range20)
    med(1,20) = nanmedian(both(2, range20));
end
if any(range21)
    med(1,21) = nanmedian(both(2, range21));
end
if any(range22)
    med(1,22) = nanmedian(both(2, range22));
end
if any(range23)
    med(1,23) = nanmedian(both(2, range23));
end
if any(range24)
    med(1,24) = nanmedian(both(2, range24));
end
if any(range25)
    med(1,25) = nanmedian(both(2, range25));
end
if any(range26)
    med(1,26) = nanmedian(both(2, range26));
end
if any(range27)
    med(1,27) = nanmedian(both(2, range27));
end
if any(range28)
    med(1,28) = nanmedian(both(2, range28));
end

%% Median plot

figure(13)
scatter(noaatemps, tempmn1(1,2:50), 30, lightGray,'filled','o')
grid on
hold on
scatter(noaatemps6, tempmn6(1,2:47), 30, lightGray,'filled','o')
hold on
scatter(noaatemps5, tempmn5(1,2:60), 30, lightGray,'filled','o')
hold on
scatter(noaatemps4, tempmn4(1,2:50), 30, lightGray,'filled','o')
hold on
scatter(noaatemps2, tempmn2(1,2:6), 30, lightGray,'filled','o')
hold on
scatter(noaatemps3, tempmn3(1,2:3), 30, lightGray,'filled','o')
hold on 
plot(p,p, 'm', 'LineWidth',3)
hold on
scatter(matrix, med,'k','filled','o','LineWidth',2)
scatter(matrix, avg,'r','filled','o','LineWidth',2)
%legend('Buoy', 'Median', 'Average', Location='best')
xlim([-2 14]);
ylim([-2 14]);
ylabel('Buoy Daily Average Temperatures (^oC)')
xlabel('NOAA Temperatures (^oC)')
title("Median/Mean Buoy Data at 0.5^oC Bins and Daily NOAA Temperatures vs Twin Otter Temperatures from June 2024")

%% Robust Stats

% RMSD using mean
n = length(avg); % Number of elements
rmsd = sqrt(sum((avg - matrix).^2) / n) %0.8960 
rmsd_med = sqrt(sum((med - matrix).^2) / n) %1.0110

%% Bias

bias_buoy_avg = avg - matrix;
bias_buoy_med = med - matrix;
q=0;

bias_avg_avg = mean(bias_buoy_avg) % 0.5245
bias_med_avg = mean(bias_buoy_med) % 0.6614

figure(14)
scatter(matrix, bias_buoy_med,'k','filled','o','LineWidth',2)
hold on
scatter(matrix, bias_buoy_avg,'r','filled','o','LineWidth',2)
ylim([-1 5])
yline(q, 'LineWidth',2)
ylabel('Buoy Bias')
xlabel('Temperature (^oC)')
legend('Median', "Mean",Location="best")

%% Fix lons

lonmn5 = lonmn5 - 360;
lonmn4 = lonmn4 - 360;
lonmn6 = lonmn6 - 360;
%% Buoy #5 Track with Temperatures

load('coastline180.mat')
figure(19)
plot(coastline(:,1),coastline(:,2),'k-','linewidth',2)
hold on
xlim([-180 -150]);
ylim([60 70]);
hold on
scatter(lonmn5, latmn5, 100, tempmn5, 'filled'); % 100 is the marker size
%colormap(redblue)
c = colorbar; % To show the temperature scale
clim([-2 15])
xlabel('Longitude')
ylabel('Latitude')
title('Buoy #5 Track with Temperatures')

%% Buoy #2 Track with Temperatures

figure(15)
plot(coastline(:,1),coastline(:,2),'k-','linewidth',2)
%colormap(redblue)
xlim([-180 -150]);
ylim([60 70]);
hold on
scatter(lonmn2, latmn2, 100, tempmn2, 'filled'); % 100 is the marker size
c = colorbar; % To show the temperature scale
clim([-2 15])
xlabel('Longitude')
ylabel('Latitude')
title('Buoy #2 Track with Temperatures')

%% Buoy #1 Track with Temperatures

figure(16)
plot(coastline(:,1),coastline(:,2),'k-','linewidth',2)
%colormap(redblue)
xlim([-180 -150]);
ylim([60 70]);
hold on
scatter(lonmn1, latmn1, 100, tempmn1, 'filled'); % 100 is the marker size
c = colorbar; % To show the temperature scale
clim([-2 15])
xlabel('Longitude')
ylabel('Latitude')
title('Buoy #1 Track with Temperatures')

%% Buoy #3 Track with Temperatures

figure(17)
plot(coastline(:,1),coastline(:,2),'k-','linewidth',2)
%colormap(redblue)
xlim([-180 -150]);
ylim([60 70]);
hold on
scatter(lonmn3, latmn3, 100, tempmn3, 'filled'); % 100 is the marker size
c = colorbar; % To show the temperature scale
clim([-2 15])
xlabel('Longitude')
ylabel('Latitude')
title('Buoy #3 Track with Temperatures')

%% Buoy #4 Track with Temperatures

figure(18)
plot(coastline(:,1),coastline(:,2),'k-','linewidth',2)
%colormap(redblue)
xlim([-180 -150]);
ylim([60 70]);
hold on
scatter(lonmn4, latmn4, 100, tempmn4, 'filled'); % 100 is the marker size
c = colorbar; % To show the temperature scale
clim([-2 15])
xlabel('Longitude')
ylabel('Latitude')
title('Buoy #4 Track with Temperatures')

%% Buoy #6 Track with Temperatures

figure(20)
plot(coastline(:,1),coastline(:,2),'k-','linewidth',2)
%colormap(redblue)
xlim([-180 -150]);
ylim([60 70]);
hold on
scatter(lonmn6, latmn6, 100, tempmn6, 'filled'); % 100 is the marker size
c = colorbar; % To show the temperature scale
clim([-2 15])
xlabel('Longitude')
ylabel('Latitude')
title('Buoy #6 Track with Temperatures')

%% All buoy tracks

figure(21)
plot(coastline(:,1),coastline(:,2),'k-','linewidth',2)
%colormap(redblue)
xlim([-180 -150]);
ylim([60 70]);
hold on
scatter(lonmn1, latmn1, 50, tempmn1, 'filled');
scatter(lonmn2, latmn2, 50, tempmn2, 'filled');
scatter(lonmn4, latmn4, 50, tempmn4, 'filled');
scatter(lonmn5, latmn5, 50, tempmn5, 'filled');
scatter(lonmn6, latmn6, 50, tempmn6, 'filled'); % 50 is the marker size
c = colorbar; % To show the temperature scale
clim([-2 15])
xlabel('Longitude')
ylabel('Latitude')
title('All Buoy Tracks with Temperatures')

%% Buoy - NOAA plot

difference = both(2,:) - both(1,:); % buoy - noaa

accuracy_avg = nanmean(difference); % 0.5673

coords(1,1:49) = lonmn1(1,2:50);
coords(1,50:54) = lonmn2(1,2:6);
coords(1,55:56) = lonmn3(1,2:3);
coords(1,57:105) = lonmn4(1,2:50);
coords(1,106:164) = lonmn5(1,2:60);
coords(1,165:210) = lonmn6(1,2:47);
coords(2,1:49) = latmn1(1,2:50);
coords(2,50:54) = latmn2(1,2:6);
coords(2,55:56) = latmn3(1,2:3);
coords(2,57:105) = latmn4(1,2:50);
coords(2,106:164) = latmn5(1,2:60);
coords(2,165:210) = latmn6(1,2:47);


%% Accuracy on map

figure(22)
plot(coastline(:,1),coastline(:,2),'k-','linewidth',2)
colormap(redblue)
xlim([-180 -150]);
ylim([60 70]);
hold on
scatter(coords(1,:), coords(2,:), 100, difference, 'filled', 'MarkerEdgeColor',lightGray); % 100 is the marker size
c = colorbar; % To show the temperature scale
clim([-6 6])
xlabel('Longitude')
ylabel('Latitude')
title('Difference Between Buoy Data and NOAA Data')

%% accuracy vs buoy temps

figure(23)
scatter(both(2,:), difference, 'filled', 'MarkerFaceColor', 'b')
yline(0, 'LineWidth', 2)
xlabel('Buoy Temperatures')
ylabel('Accuracy from the NOAA Data')
title('Accuracy vs Buoy Temperatures')

%% RMSD

%nan1 = sum(isnan(both(1,:)));
%nan2 = sum(isnan(both(2,:)));

%n_overall = 192; % Number of elements
%rmsd_overall = sqrt(sum((both(2,:) - both(1,:)).^2, 'omitnan') / n_overall); %1.6413
