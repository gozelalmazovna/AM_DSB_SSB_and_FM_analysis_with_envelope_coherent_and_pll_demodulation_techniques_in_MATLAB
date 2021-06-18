function y = my_ampmod(m,fc)
% Amplitude modulator
mue = 0.05;
ts = 1e-5;
t = [0:length(m)-1]*ts;
c = cos(2*pi*fc.*t);
m_n= m/max(abs(m));
y=(1+mue*m_n).*c;
end