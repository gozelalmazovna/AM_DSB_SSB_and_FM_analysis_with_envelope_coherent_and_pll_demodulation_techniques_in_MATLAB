function [y] =  my_dsbsc(m,fc)
%DSB-SC modulation
ts = 1e-5;
t = [0:length(m)-1]*ts;
c = cos(2*pi*fc.*t);
m_n= m/max(abs(m));
y=m_n.*c;
end