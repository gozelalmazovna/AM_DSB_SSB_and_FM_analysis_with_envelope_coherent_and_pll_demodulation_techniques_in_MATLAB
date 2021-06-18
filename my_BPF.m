function [y] = my_BPF(x,fs,fclo,fchi)
%Low pass filter with cut-off frequency: fcut
d = designfilt('bandpassfir','FilterOrder',15, ...
         'CutoffFrequency1',fclo,'CutoffFrequency2',fchi, ...
         'SampleRate',fs);
y = filtfilt(d,x);
end

