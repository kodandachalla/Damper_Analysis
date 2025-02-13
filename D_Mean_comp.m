%% Comparison of mean Values

close all; clear all; clc;
label1 = [];

%% Change only the Path and run this section only
% change location of each time new curve will be added to the current
% diagram
Path = "D:\1_Matlab Thesis_2023_10_02\Experimental data\Damper1\Damper1-T(0,5-0,5)";

[excelFiles,matrixGain,matrixPhase, Frequency] = Ext_Freq_Gain_Phase_Path(Path);

avgGain = mean(matrixGain, 2);
avgPhase = mean(matrixPhase, 2);



fold_Name = split(Path,"\");
label1 = [label1,fold_Name(end)];


subplot(2,1,1)

errorbar(Frequency,avgGain,3*std(matrixGain.')), hold on
title("Mean plot Gain vs frequency")
xlabel('Frequency (Hz)');
ylabel('Gain (daN/mm)');



subplot(2,1,2)

errorbar(Frequency,avgPhase,3*std(matrixPhase.')), hold on
title("Mean plot on Phase vs frequency")
xlabel('Frequency (Hz)');
ylabel('Phase (deg)');

hold on

%% Legend
legend(label1)



