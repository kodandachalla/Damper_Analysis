%% Dynamic_Stiffness & PHASE VS FREQ PLOT 

clear; clc;
close all;
font_size = 10;
lineWidth = 1;


%% Extracting Freq, Dynamic_Stiffness & Phase 
% using function Dynamic_Stiffness is in daN/mm, freq in Hz, Phase in Deg
%% Folder path
base_path = 'D:\1_Matlab Thesis_2023_10_02\Experimental data\Damper1'; % Replace with your desired path
all_subfolder_paths = getAllSubfolders(base_path);


for i = 1:numel(all_subfolder_paths)

        %% Inputs Path
        Path = all_subfolder_paths(i);       
        Path = Path{1,1}; 
        [~, name, ext] = fileparts(Path);
         disp(name)
        [excelFiles,matrixDynamic_Stiffness,matrixPhase, Frequency] = Ext_Freq_Dynamic_Stiffness_Phase_Path(Path);


        %% to percentage
        matrixDynamic_Stiffness = matrixDynamic_Stiffness./max(matrixDynamic_Stiffness(:))*100;
        matrixPhase = matrixPhase./max(matrixPhase(:))*100;


                
        %% Plot MAX, Min & AVG curves of Dynamic_Stiffness & phase 
        figure(1)
        subplot(2,1,1)
        maxDynamic_Stiffness = max(matrixDynamic_Stiffness, [], 2);    % Maximum values along each row
        minDynamic_Stiffness = min(matrixDynamic_Stiffness, [], 2);    % Minimum values along each row
        avgDynamic_Stiffness = mean(matrixDynamic_Stiffness, 2);       % Average values along each row
        hold on
        plot(Frequency, maxDynamic_Stiffness,'r', 'LineWidth', lineWidth )
        hold on
        plot(Frequency,minDynamic_Stiffness,'b', 'LineWidth', lineWidth )
        hold on
        errorbar(Frequency,avgDynamic_Stiffness,3*std(matrixDynamic_Stiffness.'),'k','LineWidth', lineWidth), hold on
        ax = gca;
        ax.XAxis.FontSize = font_size;
        ax.XAxis.FontWeight = 'bold';
        ax.YAxis.FontSize = font_size;
        ax.YAxis.FontWeight = 'bold';
        xlabel('Frequency (Hz)','FontWeight', 'bold');
        ylabel('Dynamic Stiffness %','FontWeight', 'bold');
     
               
        
        subplot(2,1,2)
        
        maxPhase = max(matrixPhase, [], 2);    % Maximum values along each row
        minPhase = min(matrixPhase, [], 2);    % Minimum values along each row
        avgPhase = mean(matrixPhase, 2);       % Average values along each row
        
        hold on
        plot(Frequency, maxPhase,'r', 'LineWidth', lineWidth )
        hold on
        plot(Frequency,minPhase,'b', 'LineWidth', lineWidth )
        hold on
        errorbar(Frequency,avgPhase,3*std(matrixPhase.'),'k','LineWidth', lineWidth), hold on
        ax = gca;
        ax.XAxis.FontSize = font_size;
        ax.XAxis.FontWeight = 'bold';
        ax.YAxis.FontSize = font_size;
        ax.YAxis.FontWeight = 'bold';
        xlabel('Frequency (Hz)','FontWeight', 'bold');
        ylabel('Phase %','FontWeight', 'bold');
        %title('Phase vs. Frequency');
        

        pictureName1 = strcat(name,'(dynamic stiff & Phase )','.','fig');
        pictureName2 = strcat(name,'(dynamic stiff & Phase )','.','png');
        saveas(gcf, pictureName1);
        saveas(gcf, pictureName2);  
                
        %% Plot Freq vs Dynamic_Stiffness & relative error
        figure(3)
        subplot(2,1,1)

        plot(Frequency, 0.5*(maxDynamic_Stiffness-minDynamic_Stiffness)./avgDynamic_Stiffness*100,'k', 'LineWidth', lineWidth )
        ax = gca;
        ax.XAxis.FontSize = font_size;
        ax.XAxis.FontWeight = 'bold';
        ax.YAxis.FontSize = font_size;
        ax.YAxis.FontWeight = 'bold';
        xlabel('Frequency (Hz)','FontWeight', 'bold');
        ylabel('Deviation (Dynamic Stiffness) %','FontWeight', 'bold');
       
        
        
 
        subplot(2,1,2)
        plot(Frequency, 0.5*(maxPhase-minPhase)./avgPhase*100,'k', 'LineWidth', lineWidth )
        ax = gca;
        ax.XAxis.FontSize = font_size;
        ax.XAxis.FontWeight = 'bold';
        ax.YAxis.FontSize = font_size;
        ax.YAxis.FontWeight = 'bold';
        xlabel('Frequency (Hz)','FontWeight', 'bold');
        ylabel('Deviation (Phase) %','FontWeight', 'bold');
      
        pictureName3 = strcat(name,'(dynamic stiff & Phase error)','.','fig');
        pictureName4 = strcat(name,'(dynamic stiff & Phase error)','.','png');
        saveas(gcf, pictureName3);
        saveas(gcf, pictureName4);
        

         close all;
end        
        
        

