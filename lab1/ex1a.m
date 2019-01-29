close all;
clear;

% Time specifications:
freq = 1/50;
samples = 1024;
t = (0:samples-1);
% Sine wave:
y = sin(2 * pi * freq * t);
% Plot the signal versus time:
figure;
plot(t,y);
ylabel('Amplitude');
xlabel('Sample Number');
title('Sine wave with period = 50');
axis([0, 1023, -1, 1]) 
grid on;