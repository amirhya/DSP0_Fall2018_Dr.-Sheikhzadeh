
%just like the previous one but this time  xa = exp(-1000*abs(t));
%also we will discreticize this xa ans derive the descrete sequence's DTFT
%Analog Signal
 Dt = 0.00005;
 t = -0.005:Dt:0.005;
 xa = exp(-1000*abs(t));
% Discrete-time Signal
 Ts = 0.0002;%Ts=0.001
 n = -25:1:25;
 x = exp(-1000*abs(n*Ts));
% Discrete-time Fourier transform
K = 500;
k = 0:1:K;
w = pi*k/K;
X = x * exp(-1i*n'*w);
X = real(X);
w = [-fliplr(w), w(2:K+1)];
X = [fliplr(X), X(2:K+1)];
subplot(2,1,1);plot(t*1000,xa);
xlabel('t in msec.'); ylabel('x1(n)')
title('Discrete Signal');
hold on
stem(n*Ts*1000,x);
gtext('Ts=0.2 msec');
hold off
subplot(2,1,2);
plot(w/pi,X);
xlabel('Frequency in pi units');
ylabel('X1(w)')
title('Discrete-time Fourier Transform')