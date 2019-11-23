%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Function:Practice 3     %%%
%%% Author:UMR              %%%
%%% Time:2019.11.15         %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
clc

%% Original signal
f0 = 40000;
N = 4000;
n = 0:N-1;
t = (1/f0)*n;
xa = 3*cos(400*pi*t) + 5*sin(1200*pi*t) + 6*cos(4400*pi*t) + 2*sin(5200*pi*t);

figure(1)
title('Origianl signal');
xlabel('t');
ylabel('xa');
hold on
plot(t,xa);

%% Sample signal
fs = 4000;
N1 = 400;
n1 = 0:N1-1;
t1 = (1/fs)*n1;
xs = 3*cos(400*pi*t1) + 5*sin(1200*pi*t1) + 6*cos(4400*pi*t1) + 2*sin(5200*pi*t1);

figure(2)
title('Sample signal');
xlabel('t');
ylabel('xs');
hold on
plot(t1,xs);
