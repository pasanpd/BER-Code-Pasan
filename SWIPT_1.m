%% Parameters
Ps=1 ; %Transmission Power of the source in watts
dsd=100;%Disstance between source and desitination (in meters)
hsd=0.8;% Chanel cofficient
sigma_sd=0.01;%AWGN noise
dsr=100%distance source to relay
hsr=0.8 %chanel between source and relay
T=1
tau=0.8
efficiency=90%
sigma_sr=0.02

%% BPSK Modulation
%in bpsk we can modulate signal x(t)= ±1
%for simplicity we assume single siymbol transmission and E={|x(t)|^2}=1
%% Recived Signal via direct link at destination
ysd = sqrt(Ps/dsd) * abs(hsd) + randn * sigma_sd;
%% Recived SNR at destination via direct link
gamma = (Ps * abs (hsd)^2) / (dsd * (sigma_sd)^2);
%% Harvested energy at the relay
Er = (efficiency * Ps *  abs (hsr)^2 * T * tau) / dsr;
%% Recived signal at relay
ysr=sqrt (Ps/dsr)*abs (hsr)*1+randn *sigma_sr







