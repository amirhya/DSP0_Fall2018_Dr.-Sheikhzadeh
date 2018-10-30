%%
b=[1 1 1 1 1 1 1 1 1 1 1];
a=[0 0 0 0 0 1 0 0 0 0 0];

%%
[h,w] = freqz(b,a,'whole',2001);
plot(w/pi,20*log10(abs(h)));
%%
magX = abs(h);