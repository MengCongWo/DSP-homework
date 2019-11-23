%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Function:z-transform    %%%
%%% Author:UMR              %%%
%%% Time:2019.11.16         %%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clear all
clc

%% Question 1
pz = [3 -2.4 15.36 3.84 9];     % molecule vector
dz = [5 -8.5 17.6 4.7 -6];      % denominator vector
zplane(pz,dz);

%% Question 2
syms z n;
Gz = (3*z^4-2.4*z^3+15.36*z^2+3.84*z+9)/(5*z^4-8.5*z^3+17.6*z^2+4.7*z-6);
gn = iztrans(Gz,z,n);
figure(2)                       % the result is a little sophisticated,the others are in the word file
axis off
text('Interpreter','latex','String','$\frac{5859\,{\left(\frac{1}{2}\right)}^n}{3685}+\frac{684\,{\left(-\frac{3}{5}\right)}^n}{935}-\frac{3\,\delta _{n,0}}{2}+\frac{1164\,{\left(-1\right)}^n\,{20}^n\,\cos\left(n\,\left(\pi -\mathrm{acos}\left(\frac{9}{20}\right)\right)\right)}{5695\,{10}^n}+\frac{{\left(-1\right)}^n\,5^{1-n}\,\sqrt{319}\,{\left(-\frac{9}{2}-\frac{\sqrt{319}\,1{}\mathrm{i}}{2}\right)}^{n-1}\,882{}\mathrm{i}}{33031}-\frac{{\left(-1\right)}^n\,5^{1-n}\,\sqrt{319}\,{\left(-\frac{9}{2}+\frac{\sqrt{319}\,1{}\mathrm{i}}{2}\right)}^{n-1}\,882{}\mathrm{i}}{33031}$','Position',[-0.1,0.5],'FontSize',20);

%% Question 3
[H,w] = freqz(pz,dz,512);       % casual system
Hw = abs(H);                    % amplitude response for [0,pi],and the rest of it satisfies symmetry
figure(3)
title('Amplitude response');
xlabel('w');
ylabel('|H(w)|');
plot(w,Hw);
axis([0,pi,0,2.5]);             
hold on









