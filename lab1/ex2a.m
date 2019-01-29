close all;
clear;

samples = 100;
mean_val = 0;
variance = 10;
std_val = sqrt(variance);

data = normrnd(mean_val, std_val, 1, samples);
mean_sim = mean(data);
std_sim = std(data);

max_dat = max(data);
min_dat = min(data);

disp("Mean Sim: " + mean_sim);
disp("STD Sim: " + std_sim);
disp("Max: " + max_dat);
disp("Min: " + min_dat);

std_per_err = ((std_sim-std_val)/std_val)*100;

disp("STD Percent Error: " + std_per_err);

figure;
x = (0:samples-1);
plot(x,data);
ylabel('Amplitude');
xlabel('Sample Number');
title('Gaussian Variates, mean = 0, variance = 2');
grid on;