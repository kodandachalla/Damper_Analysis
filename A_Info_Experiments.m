%% Input Displacement vs Frequency curve 
clear all;
close all;
clc
font_size = 10;
lineWidth = 1;

x1 = [4, 10];
x2 = [10, 40]; 
x3 = [10,10];

%% 1

subplot(8,1,1)
plot([4,40],[1,1],'b','LineWidth', lineWidth)
ax = gca;
ax.XAxis.FontSize = font_size;
ax.XAxis.FontWeight = 'bold';
ax.YAxis.FontSize = font_size;
ax.YAxis.FontWeight = 'bold';

text(5, 0.5, 'Test1-1');


ylim([0,2])
xlim([min(x1)-1, max(x2)+1])

%% 2
    
y1 = [2, 2];     

 
y2 = [1, 1]; 


y3 = [2,1];


subplot(8,1,2)
plot(x1, y1, 'b','LineWidth', lineWidth)  
hold on
plot(x3,y3,'-.k','LineWidth', lineWidth)
hold on
plot(x2, y2, 'r','LineWidth', lineWidth)  

ax = gca;
ax.XAxis.FontSize = font_size;
ax.XAxis.FontWeight = 'bold';
ax.YAxis.FontSize = font_size;
ax.YAxis.FontWeight = 'bold';



text(5, 0.5, 'Test2-1');

ylim([min([y1,y2])-1.5, max(([y1,y2]))+.5])
xlim([min(x1)-1, max(x2)+1])

%% 3
subplot(8,1,3)
plot([4,40],[2,2],'b','LineWidth', lineWidth)

ax = gca;
ax.XAxis.FontSize = font_size;
ax.XAxis.FontWeight = 'bold';
ax.YAxis.FontSize = font_size;
ax.YAxis.FontWeight = 'bold';


text(5, 1.5, 'Test2-2');

ylim([1,3])
xlim([min(x1)-1, max(x2)+1])

%% 4
subplot(8,1,4)
plot([4,40],[0.5,0.5],'b','LineWidth', lineWidth)

ax = gca;
ax.XAxis.FontSize = font_size;
ax.XAxis.FontWeight = 'bold';
ax.YAxis.FontSize = font_size;
ax.YAxis.FontWeight = 'bold';

text(5, 0.2, 'Test0.5-0.5');


ylim([0,1])
xlim([min(x1)-1, max(x2)+1])

%% 5
subplot(8,1,5)
plot([4,40],[0.1,0.1],'b','LineWidth', lineWidth)

ax = gca;
ax.XAxis.FontSize = font_size;
ax.XAxis.FontWeight = 'bold';
ax.YAxis.FontSize = font_size;
ax.YAxis.FontWeight = 'bold';
ylabel('Displacement (mm) (pk-pk)','FontWeight', 'bold')

text(5, 0.05, 'Test0.1-0.1');

ylim([0,.2])
xlim([min(x1)-1, max(x2)+1])


%% 6
subplot(8,1,6)
plot([4,40],[0.2,0.2],'b','LineWidth', lineWidth)
ax = gca;
ax.XAxis.FontSize = font_size;
ax.XAxis.FontWeight = 'bold';
ax.YAxis.FontSize = font_size;
ax.YAxis.FontWeight = 'bold';

text(5, 0.15, 'Test0.2-0.2');

ylim([0.1,.3])
xlim([min(x1)-1, max(x2)+1])

%% 7
subplot(8,1,7)
plot([4,40],[0.3,0.3],'b','LineWidth', lineWidth)
ax = gca;
ax.XAxis.FontSize = font_size;
ax.XAxis.FontWeight = 'bold';
ax.YAxis.FontSize = font_size;
ax.YAxis.FontWeight = 'bold';

text(5, 0.25, 'Test0.3-0.3');

ylim([0.2,.4])
xlim([min(x1)-1, max(x2)+1])

%% 8
subplot(8,1,8)
plot([4,40],[0.4,0.4],'b','LineWidth', lineWidth)
ax = gca;
ax.XAxis.FontSize = font_size;
ax.XAxis.FontWeight = 'bold';
ax.YAxis.FontSize = font_size;
ax.YAxis.FontWeight = 'bold';
xlabel('Frequency (Hz)','FontWeight', 'bold')

text(5, 0.35, 'Test0.4-0.4');

ylim([0.3,.5])
xlim([min(x1)-1, max(x2)+1])
