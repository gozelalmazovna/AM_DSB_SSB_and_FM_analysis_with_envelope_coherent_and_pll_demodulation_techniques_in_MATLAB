function [y] = my_HPF(x,fs,fcut)
%Low pass filter with cut-off frequency: fcut
d = designfilt("highpassfir", "FilterOrder",15, "CutoffFrequency", fcut, "SampleRate", fs);
y = filtfilt(d,x);
end