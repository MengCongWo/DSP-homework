%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Function:DTMF          %%%
%%% Author:UMR             %%%
%%% Time:2019.11.16        %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
clc

%% Generate DTMF(do not add noise)
ID_num = [1 7 0 1 0 1 8 8 0 0 3];% input vector
key = [1,2,3,65;                 % keyboard 1,2,3,a
       4,5,6,66;                 % keyboard 4,5,6,b
       7,8,9,67;                 % keyboard 7,8,9,c  
       42,0,35,68];              % keyboard .,0,#,d  
f1=[697,770,852,941];            % low frequency
f2=[1209,1336,1477,1633];        % high frequency
n = 0:2999;                      % series
fs = 30000;                      % sample rate
t = (1/fs)*n;                    % time series
rec = 0;                         % receive vector
for i = 1:11                     % traverse all the id_num
    for j = 1:4                  % traverse the row
        for k = 1:4              % traverse the column
            if key(j,k) == ID_num(i)
                x = sin(2*pi*t*f1(j)) + sin(2*pi*t*f2(k));  % generate DTMF
                disp(key(j,k));  % id_num 
                figure(1)   
                plot(t,x);
                title('DTMF signal');
                xlabel('t');
                ylabel('x');
                hold on
                sound(x,fs);     % play the auido
                pause(0.15);     % pause time
                break;
            end   
        end
    end
end
            











