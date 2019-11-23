%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Function:Linear-phase FIR highpass filter %%%
%%% Author:UMR                                %%%
%%% Time:2019.11.22                           %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
clc

%% Preparation and defination
N = 48;            % rank
Ws = 0.3;          % stopband
Wp = 0.55;         % passband

%% Window function:Hamming
% The cofficients are in variable Ham
Ham = fir1(N,Wp,'high',hamming(N+1));
disp("cofficient 1:");
disp(Ham);
[H1,w1] = freqz(Ham,1);
figure(1)
subplot 211
title('Amplitude response (Hamming)');
hold on
plot(w1/pi,abs(H1));
xlabel('w1/¦Ð');
ylabel('|H1(w)|');
grid on;
hold on;
subplot 212
title('Phase response (Hamming)');
hold on
plot(w1/pi,angle(H1));
xlabel('w1/¦Ð');
ylabel('¦Õ1');
grid on;
hold on;

%% Window function:Hann
% The cofficients are in variable Han
Han = fir1(N,Wp,'high',hann(N+1));
disp("cofficient 2:");
disp(Han);
[H2,w2] = freqz(Han,1);
figure(2)
subplot 211
title('Amplitude response (Hann)'); 
hold on
plot(w2/pi,abs(H2));
xlabel('w2/¦Ð');
ylabel('|H2(w)|');
grid on;
hold on;
subplot 212
title('Phase response (Hann)');
hold on
plot(w2/pi,angle(H2));
xlabel('w2/¦Ð');
ylabel('¦Õ2');
grid on;
hold on;

%% Window function:Blackman
% The cofficients are in variable Blm
Blm = fir1(N,Wp,'high',blackman(N+1));
disp("cofficient 3:");
disp(Blm);
[H3,w3] = freqz(Blm,1);
figure(3)
subplot 211
title('Amplitude response (Blackman)');
hold on
plot(w3/pi,abs(H3));
xlabel('w3/¦Ð');
ylabel('|H3(w)|');
grid on;
hold on;
subplot 212
title('Phase response (Blackman)');
hold on
plot(w3/pi,angle(H3));
xlabel('w3/¦Ð');
ylabel('¦Õ3');
grid on;
hold on;

%% Window function:Kaiser
% The cofficients are in variable Kis
Kis = fir1(N,Wp,'high',kaiser(N+1));
disp("cofficient 4:");
disp(Kis);
[H4,w4] = freqz(Kis,1);
figure(4)
subplot 211
title('Amplitude response (Kaiser)');
hold on
plot(w4/pi,abs(H4));
xlabel('w4/¦Ð');
ylabel('|H4(w)|');
grid on;
hold on;
subplot 212
title('Phase response (Kaiser)');
hold on
plot(w4/pi,angle(H4));
xlabel('w4/¦Ð');
ylabel('¦Õ4');
grid on;
hold on;






