
% P4: Even odd decomposition of x2(n) = cos(0.2*pi*n + pi/4); % -20 <= n <= 20;
%plotting the even and odd part separately
clc; close all;
n3 = [-20:20];
x3 = cos(0.2*pi*n3 + pi/4);
[xe3,xo3,m3] = evenodd(x3,n3);

Hf_1 = figure;
subplot(2,1,1);
Hs = stem(m3,xe3,'filled');
set(Hs,'markersize',2);
axis([min(m3)-2,max(m3)+2,min(xe3)-1,max(xe3)+1]);
xlabel('n');
ylabel('x_e(n)');
title('Even part of x_3(n) = cos(0.2 \times \pi \times n + \pi/4)');
ntick = [m3(1):4:m3(end)];

subplot(2,1,2);
Hs = stem(m3,xo3,'filled');
set(Hs,'markersize',2);
axis([min(m3)-2,max(m3)+2,min(xo3)-1,max(xo3)+1]);
xlabel('n');
ylabel('x_o(n)');
title('Odd part of x_3(n) = cos(0.2 \times \pi \times n + \pi/4)');
ntick = [m3(1):4 :m3(end)];
set(gca,'XTick',ntick);

