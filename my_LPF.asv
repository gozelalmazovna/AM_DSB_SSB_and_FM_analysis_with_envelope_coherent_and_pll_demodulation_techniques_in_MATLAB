function [y] = my_LPF(x,fs,fcut)
%Low pass filter with cut-off frequency: fcut
d = designfilt("lowpassfir", "FilterOrder",15, "CutoffFrequency", fcut, "SampleRate", fs);
y = filtfilt(d,x);
end


