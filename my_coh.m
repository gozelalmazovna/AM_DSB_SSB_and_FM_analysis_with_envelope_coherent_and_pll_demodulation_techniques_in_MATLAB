function [z] = my_coh(y,fc)
%Coherent detector
t=[0:247999]*1e-5;
z=y.*cos(2*pi*fc*t);
z = my_LPF(y.*cos(2*pi*fc*t),fs,fc);
end


