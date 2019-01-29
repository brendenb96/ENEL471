close all;
clear;

% Time specifications:
time=0.05;
samples_per_cycle = 50;
freq = 1/time;
samples = 1024;
sample_int = time/samples_per_cycle;
disp(sample_int);
t = linspace(0,sample_int*samples,samples);
% Sine wave:
y = sin(2 * pi * freq * t);
% Plot the signal versus time:
figure;
plot(t,y);
ylabel('Amplitude');
xlabel('Time in Seconds');
title('Sine wave with period = 0.05');
axis([0, sample_int*samples, -1, 1]) 
grid on;