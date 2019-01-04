%% Akshatha K V (PHYS115) Guide: Prof.Udaya Shankar N
%  Raman Research Institute
%  This readme file gives information about the data set used in all the analysis programs.
Detailed Report: http://reports.ias.ac.in/report/13382/application-of-wavelets-for-the-detection-of-the-global-21cm-signal-from-the-epoch-of-reionisation

The spectral_data.txt contains the data used in all the programs. 
The first column is frequency.
Second column: Foreground data.
Third column: EoR signal
Fourth column: RMS Error

The data is listed as a 2D array(row wise) with ',' as a delimiter.
Therefore, 
spectral_data(:,1) gives all the rows of column-1 i.e, frequency.
There are 592 data points, which makes the order of array= 592X4
