%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Function:Butterworth lospass filter %%%
%%% Author:UMR                          %%%
%%% Time:2019.11.16                     %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
clc

%% Butterworth lowpass filter (analog)
% fp = 15000 Hz, fs = 25000 Hz, N = 11
% maybe there is computing error, my conclusion is 13, but what the program gives is 10 
f = 100000;          % sample rate
fp = 15000;          % passband
fs = 25000;          % stopband
Rp = 0.3;            % ripple
Rs = 45;             % damp
Wp = 2*pi*fp;        % standard angle frequency
Ws = 2*pi*fs;
%n = 0:1/f:2;
[N,Wn] = buttord(Wp,Ws,Rp,Rs,'s');     % rank and passband
% [b,a] = butter(N,Wn,'s');
% fk=0:100000/2^17:100000;
% wk=2*pi*fk;
[z,p,k] = buttap(N);
[b,a] = zp2tf(z,p,k);        % b:numerator,a:denominator
%[B,A] = lp2lp(b,a,Wn);
%b=real(poly(z0));
%b=b*k0;
%a=real(poly(p0));
[X,w] = freqs(b,a);
%X = freqs(b,a,wk);
figure(1)
subplot 211
title('Magnitude response');
plot(w/pi,abs(X));
xlabel('w/¦Ð');
ylabel('|X(w)|');
axis([0,1,0,1]);
hold on
subplot 212
title('Phase response');
plot(w/pi,angle(X));
xlabel('w/¦Ð');
ylabel('¦Õ');
axis([0,1,-3.3,3.3]);
hold on

%% Butterworth lowpass filter (bilinear transform method)
[D,C] = bilinear(b,a,f);     % bilinear transform method
[Hz,w1] = freqz(D,C);
figure(2)
plot(w1/pi,abs(Hz));







