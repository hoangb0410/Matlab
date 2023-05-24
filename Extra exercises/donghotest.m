% Author: Abhishek Agrawal
% Topic : Designing Analog Clock using MATLAB
% Company: MATLAB Helper
% Website: https://matlabhelper.com
% Date : 12-05-2020
% With the help of this script we will design an analog clock
% NOTE: CLOCK STARTS AND IS MAINTAINED ACCORDING TO TIME INDICATED BY THE INBUILT COMMAND "clock"
% IMPORTANT NOTE: USE s IN COMMAND LINE TO END THE PROGRAM or Stop the clock
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Clearing the command window and workspace and close all other tabs
clc
close
clear
warning off
%% To create a display of the clock (outer circle)
format shortg
% Creating a circle of radius 10 with centre (0,0)
x=0;y=0;r=10;
hold on;
% angle assigning theta = 0:2*pi i.e. creating a vector theta from 0 to 2*pi
theta = 0:pi/60:2*pi;
% visualization creating and plotting a circle or display for the clock
xc = r * cos(theta);
yc = r * sin(theta);
h = plot(xc,yc,'r','linewidth',4);
axis off
%% To create an analog display for the clock
r=9; i=1;
set(gca,'FontWeight','bold');
% plotting the no. 1 to 12 in the clock every 30 degree apart
for theta = pi/6: pi/6: 2*pi
y1 = r * cos(theta);
x1 = r * sin(theta);
% plotting the lines for 1 to 12
plot([x1/9*8 x1/9*7],[y1/9*8 y1/9*7],'color',[0 0 1])
%num2str converts no. to string to write numbers 1 to 12 in the plot
text(x1/9*9.5,y1/9*9.5,num2str(i),'color',[0 0 1]);
i=i+1;
end
for theta=pi/30 : pi/30 : 2*pi
y1 = 10 * cos(theta);
x1 = 10 * sin(theta);
% plotting the lines for 1 to 12
plot([x1/9*8 x1/9*7],[y1/9*8 y1/9*7],'color',[0 0 0])
end
%% Getting the time from the system
while(1)
tic
% clock returns the 6 element vector containing date and time
c = clock;
% 4:6 for hour, min,sec
c = c(1,4:6);
minute =c(1,2); sec=c(1,3);
% 24hrs time format, if hr >12 so hr-12
if (c(1,1)>12)
hr = c(1,1)-12;
else
hr = c(1,1);
end
min1 = ceil(minute/12);
% Angle of the hour hand
theta = (hr*pi)/6 + (min1*pi)/30;
f=figure(1); hold on;
% Ploting the hour hand
y1 = 3 * cos(theta); Yhr = [0 y1];
x1 = 3 * sin(theta); Xhr = [0 x1];
hrhnd=plot(Xhr,Yhr);hold on;
% Angle sustained by the minute hand
theta1 = (minute*pi)/30;
% Ploting the minute hand
y2 = 4.5 * cos(theta1); Ymin = [0 y2];
x2 = 4.5 * sin(theta1); Xmin = [0 x2];
minhnd=plot(Xmin,Ymin);
% Angle sustained by the second hand
theta2 = (sec*pi)/30;
% Ploting the second hand
y3 = 5 * cos(theta2); Ysec = [0 y3];
x3 = 5 * sin(theta2); Xsec = [0 x3];
sechnd=plot(Xsec,Ysec);
% tic and toc is used in order to get the processing time of loop
z=toc;
% Viewing or pausing the screen for 'x' second
pause(1-z);
% delete all the current figures.
delete(sechnd);
delete(minhnd);
delete(hrhnd);
s = figure(1);
isKeyPressed = ~isempty(get(s,'CurrentCharacter'));
if isKeyPressed
close figure 1;
break;
end
end