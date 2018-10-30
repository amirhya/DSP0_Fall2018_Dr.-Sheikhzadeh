clear all;
close all
clc;
% DSP BSC course
% Demo program by Hamid Sheikhzadeh, Feb. 2018.
% Gibbs Phenomena, effect of increasing DTFT order
Sinc_CutOff=.5; % Normalized freq
N=1024;
for len=[3, 6, 9, 12]
    s=sinc(-len:Sinc_CutOff:len);
    s_len=length(s);
    S=freqz(s,sum(s),N);
    S=S/max(abs(S));
    plot((abs(S)));
    hold on;grid on;
end;
title('Gibbs Phenomena, effect of increasing DTFT order');
