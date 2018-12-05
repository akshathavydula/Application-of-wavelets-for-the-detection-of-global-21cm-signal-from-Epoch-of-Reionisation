%% Akshatha K V (PHYS115) Guide: Prof.Udaya Shankar N
% Raman Research Institute
% 1.This program loads data from spectral_data.txt
% 2.The foreground, Signal and RMS value are plotted with respect to frequency.
% 3.CWT is computed for both foreground and the signal using Ricker wavelet ranging from scale of 1 to 32.
% 4.The scale is used to stretch/squeeze the wavelet and perform corelation with the input signal. 
% 5.Descroption of Scalogram: The obtained values are plotted with respected Translation(the points corresponding to frequency in the input stream) on x-axis
% and Scales on Y-axis. The co-effients (intensity of CWT coefficients) are on z-axis 
%% load data file
%This line copies the entire contents of the file in a two dimentional
%array
array= load('spectral_data.txt');

%assign each column of array to a one-dimentional array
freq=array(:,1);
fore=array(:,2);
rms=array(:,3);
sig=array(:,4);
len = length(freq);
%plot frequency vs foreground data
figure(1);
plot(freq, fore);
title('Foreground plotted wrt Frequency')
xlabel('Frequency in MHz');
ylabel('Temperature in K');
grid on;
%plot frequency vs EoR signal
figure(2);
plot(freq, sig);
title('Signal(Temperature Dip) wrt Frequency')
xlabel('Frequency in MHz');
ylabel('Temperature in K');
grid on;
%plot frequency vs RMS signal
figure(3);
plot(freq, rms);
title('RMS error wrt Frequency')
xlabel('Frequency in MHz');
ylabel('Temperature in K');
grid on;
%% Compute CWT of foreground using cwt() funtion

%cwt function description: cwt(inputData, scales, wavelet, plot for plotting a scalogram)
cwt_fore=cwt(fore, 1:32,'mexh','plot');
%this line computes cwt of foreground using Ricker wavelet(Mexican hat wavelet)
%from scales ranging from 1 to 32. The last argument is for plotting the transform

ylabel('Scale');
xlabel('Translation');
title('Continuous Wavelet Transform of foreground using Ricker wavelet');  
ylabel('Scale');

%% Compute CWT of signal
cwt_sig=cwt(sig, 1:32,'mexh','plot');
%this line computes cwt of Signal using Ricker wavelet(Mexican hat wavelet)
%from scales ranging from 1 to 32. The last argument is for plotting the transform

ylabel('Scale');
xlabel('Translation');
title('Continuous Wavelet Transform of Signal using Ricker wavelet');  
ylabel('Scale');

