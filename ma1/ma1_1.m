

%e.g. plotting x2 using stem function

% P1: x2(n) = sum_{k = -5}^{5} e^{-|k|}*delta(n - 2k), -10 <= n <= 10
  clc; close all;
n2 = [-10:10]; x2 = zeros(1,length(n2)); for k = -5:5
x2 = x2 + exp(-abs(k))*impseq(2*k ,-10,10); end
Hf_1 = figure; set(Hf_1,'NumberTitle','off','Name','P0201b'); 
Hs = stem(n2,x2,'filled');
set(Hs,'markersize',5);
axis([min(n2)-1,max(n2)+1,min(x2)-1,max(x2)+1]);
xlabel('n'); 
ylabel('x_2(n)'); 
title('Sequence x_2(n)');
