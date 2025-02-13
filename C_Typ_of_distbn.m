%% Data Distribution Type
clear all;
close all;
clc

[excelFiles,matrixGain,matrixPhase, Frequency] = Ext_Freq_Gain_Phase();

%% Histogram for all Frequency

figure;
histogram(matrixGain);
title('Histogram Gain');
xlabel('Gain (daN/MM)');

figure;
histogram(matrixPhase);
title('Histogram Phase');
xlabel('Phase (daN/MM)');


%% Histogram for Individual frequency
% where each row corresponds to different frequencies.

% Number of frequencies
numFrequencies = size(Frequency,1);


% Loop through each frequency
for i = 1:numFrequencies
    

    %%%%%%%%%%%%% Extract data for the current frequency
    %change Gain to Phase for histogram at different frequency
    currentData = matrixGain(i, :);

    %currentData = matrixPhase(i, :);
    
    % Visual Inspection using Histogram
    figure;
    histogram(currentData, 7);
    title(['Histogram for Frequency',num2str(Frequency(i)),"(Hz)"]);
    xlabel('Gain (daN/MM)');
    %xlabel('Phase (daN/MM)');

    ylabel('Frequency');   
    
end



