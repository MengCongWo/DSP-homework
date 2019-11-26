%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Function:Up-sampling and down-sampling %%%
%%% Author:UMR                             %%%
%%% Time:2019.11.23                        %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
clc

%% Preparation
N1 = 35;                  % The number of points   
N2 = 45;
L1 = 2;                   % Up-sampling factor
L2 = 5;
M1 = 3;                   % Down-sampling factor
M2 = 3;
f11 = 0.041;              % sin1 frequency
f12 = 0.037;
f21 = 0.027;              % sin2 frequency
f22 = 0.025;   
fs = 0.45;                % sampling rate

%% Up-sampling and down-sampling for sin1
n1 = 0:N1-1;                 % time series original
t1 = (1/fs)*n1;              % time series
y1 = sin(2*pi*f11*t1) + sin(2*pi*f21*t1);      % sin1
% up sample
n1up = 0:L1*N1-1;            % time series
ordiny1 = zeros(1,L1*N1);    
for i = 1:N1
    ordiny1(L1*i-1) = y1(i);  % insert zeros
end
% down sample
n1dw = 0:(N1+1)/M1;          % original 12 time series
t1dw = n1dw*(M1/fs);         % time series 12
y1dw = sin(2*pi*f11*t1dw) + sin(2*pi*f21*t1dw);  % sin1 down sample
figure(1)
subplot 311
title('Original signal');
hold on
stem(n1,y1,'.');
xlabel('n');
ylabel('y(n)');
hold on
subplot 312 
title('Up-sampling signal');
hold on
stem(n1up,ordiny1,'.');
xlabel('n');
ylabel('y(n)');
hold on
subplot 313
title('Down-sampling signal');
hold on
stem(n1dw,y1dw,'.');
xlabel('n');
ylabel('y(n)');
hold on

%% Up-sampling and down-sampling for sin2
n2 = 0:N2-1;                % time series original
t2 = (1/fs)*n2;             % time series
y2 = sin(2*pi*f12*t2) + sin(2*pi*f22*t2);        % sin2
% up sample
n2up = 0:L2*N2-1;            % time series
ordiny2 = zeros(1,L2*N2);    
for i = 1:N2
    ordiny2(L2*i-1) = y2(i);  % insert zeros
end
% down sample
n2dw = 0:(N2+1)/M2;          % original 21 time series
t2dw = n2dw*(M2/fs);         % time series 21
y2dw = sin(2*pi*f12*t2dw) + sin(2*pi*f22*t2dw);  % sin2 down sample
figure(2)
subplot 311
title('Original signal');
hold on
stem(n2,y2,'.');
xlabel('n');
ylabel('y(n)');
hold on
subplot 312 
title('Up-sampling signal');
hold on
stem(n2up,ordiny2,'.');
xlabel('n');
ylabel('y(n)');
axis([0,225,-2,2]);
hold on
subplot 313
title('Down-sampling signal');
hold on
stem(n2dw,y2dw,'.');
xlabel('n');
ylabel('y(n)');
hold on











