%% Extracting Frequency and Gain(daN/MM) and phase(deg) and excel names from excel files

function [excelFiles, matrixGain, matrixPhase, Frequency] = Ext_Freq_Gain_Phase_Path(Path)
    folderPath = Path;  % Get the current folder path
    filePattern = fullfile(folderPath, '*.xlsx');
    % Specify the file pattern (e.g., '*.xlsx' for Excel files)

    excelFiles = dir(filePattern);
    % Get the list of Excel files matching the file pattern
    
    numFiles = numel(excelFiles); % Get the number of files
    
    dataListGain = cell(numFiles, 1); % Preallocate cell arrays
    dataListPhase = cell(numFiles, 1); % Preallocate cell arrays

    Frequency = []; % Initialize Frequency as an empty array

    for i = 1:numFiles
        filePath = fullfile(folderPath, excelFiles(i).name);
        
        % Read the data from the Excel file (only once)
        data = xlsread(filePath);  %#ok<XLSRD> 
        
        % Extract the individual gain and phase columns
        Gain = data(11:end, 4)/10; 
        Phase = data(11:end, 5);     

        % Append individual gain and phase column to cell arrays
        dataListGain{i} = Gain;
        dataListPhase{i} = Phase;
        
        % Store the frequency data from the first file (assuming all files have the same frequency data)
        if i == 1
            Frequency = data(11:end, 1);
        end
    end
    
    % Convert dataList to matrices without using cell2mat
    matrixGain = cat(2, dataListGain{:});
    matrixPhase = cat(2, dataListPhase{:});
end

