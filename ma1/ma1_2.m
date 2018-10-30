
%plotting histogram of a random gaussian function with a mean of 10 and variance of 10
%using hist function 
% P2: x2(n) = gaussian{10,10} 
clc; close all;
n2 = [1:10000];
x2 = 10 + sqrt(10)*randn(1,10000);
Hf_1 = figure;
[h2,x2out] = hist(x2,100);
bar(x2out,h2);
xlabel('interval');
ylabel('number of elements');
title('Histogram of sequence x_2(n) in 100 bins');
