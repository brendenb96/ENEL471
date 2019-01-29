close all;
clear;

data = 1;
Fc = 10000;
Tb = 0.125/1000;
N = 31;
Ts = Tb/N;

n = (0:N-1);
s = data*cos(2 * pi * Fc * n * Ts);

mean_val = 0;
std_val = 0.1;

channel_noise = normrnd(mean_val, std_val, 1, N);

figure;
x = Ts*n;
y = s + channel_noise;
plot(x,y);

ylabel('Amplitude');
xlabel('Time (s)');
title('Transmitted Signal (with noise) vs Time');
axis([0, max(x), min(y)-0.1, max(y)+0.1]) 
grid on;