%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Function:Practice 2     %%%
%%% Author:UMR              %%%
%%% Time:2019.11.15         %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
clc

%% Question 1
f0 = 5*10^3;      % origianl frequency
fai = 3/20;       % origianl phase
A = 2;            % amplitude
N = 3000;         % number of dots
fs = 5*10^5;      % sample rate
n = 0:N-1;
t = n*(1/fs);     % time series
xn = A*cos(2*pi*f0*t + fai);   % original signal
yn = (A/2)*randn(1,3000);  % gauss noise
dn = xn + yn;
figure(1)
subplot 311
title("Origianl signal");
xlabel('t');
ylabel('xn');
hold on
plot(t,xn);
subplot 312
title("Noise");
xlabel('t');
ylabel('yn');
hold on
plot(t,yn);
subplot 313
title("Signal and noise");
xlabel('t');
ylabel('dn');
hold on
plot(t,dn);

%% Queston 2
[crn,lags] = xcorr(xn,dn,'unbiased');
%[crn,lags] = xcorr(xn,dn,'biased');
figure(2)
title('Cross correlation');
xlabel('¦Ó');
ylabel('crn');
hold on
plot(lags,crn);

%% Queston 3
[rn,lags] = xcorr(dn,'unbiased');
%[rn,lags] = xcorr(dn,'biased');
figure(3)
title('Auto correlation');
xlabel('¦Ó');
ylabel('rn');
hold on
plot(lags,rn);











