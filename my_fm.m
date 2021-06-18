function [y] = my_fm(m,fc)
%FM modulation
fs = 1e5;
t = [0:247999]*1e-5;
fDev = 50;
int_x = cumsum(m)/fs;
beta = fDev/1500;
y = cos(2*pi*fc*t)-beta*sin(2*pi*fc*t)*sin(2*pi*fDev*int_x);
end
