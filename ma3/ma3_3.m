
%%%%look at what decimation does to a signal, be brave and plot their DTFT
%%%too

n = 0:2048;
k1 = 256;
k2 = k1+32;
m = 0:(k2-k1);
Hf1 = figure('units','inches','position',[1,1,6,4],...
    'paperunits','inches','paperposition',[0,0,6,4]);
% (a) Original signal
x = cos(0.125*pi*n);
subplot(2,2,1);
Ha = stem(m,x(m+k1+1),'g','filled');
axis([-1,33,-1.1,1.1]);
set(Ha,'markersize',2);
ylabel('Amplitude');
title('Original Sequence x(n)');
set(gca,'xtick',[0,16,32]);
set(gca,'ytick',[-1,0,1]);
% (b) Decimation by D = 2
D = 2;
y = decimate(x,D);
subplot(2,2,2);
Hb = stem(m,y(m+k1/D+1),'c','filled');
axis([-1,33,-1.1,1.1]);
set(Hb,'markersize',2);
ylabel('Amplitude');
title('Decimated by D = 2');
set(gca,'xtick',[0,16,32]);
set(gca,'ytick',[-1,0,1]);
% (c) Decimation by D = 4
D = 4;
y = decimate(x,D);
subplot(2,2,3);
Hc = stem(m,y(m+k1/D+1),'r','filled');
axis([-1,33,-1.1,1.1]);
set(Hc,'markersize',2);
ylabel('Amplitude');
title('Decimated by D = 4');
set(gca,'xtick',[0,16,32]);
set(gca,'ytick',[-1,0,1]);
xlabel('n');
% (d) Decimation by D = 8
D = 8;
y = decimate(x,D);
subplot(2,2,4);
Hd = stem(m,y(m+k1/D+1),'m','filled');
axis([-1,33,-1.1,1.1]);
set(Hd,'markersize',2);
ylabel('Amplitude');
title('Decimated by D = 8');
set(gca,'xtick',[0,16,32]);
set(gca,'ytick',[-1,0,1]);
xlabel('n');