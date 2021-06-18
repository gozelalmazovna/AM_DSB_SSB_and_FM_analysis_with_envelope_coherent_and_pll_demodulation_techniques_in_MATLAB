function [y] = my_ssb(m,fc)
%SSB modulation
ts = 1e-5;
t = [0:length(m)-1]*ts;
Hd = designfilt('hilbertfir','FilterOrder',60, ...
    'TransitionWidth',0.1,'DesignMethod','equiripple');
m_tilde = filter(Hd,m);
G = filtord(Hd)/2;   % Filter delay
m_delayed = [zeros(1,G),m(1:end-G)];
y = m_delayed.*cos(2*pi*fc.*t) - m_tilde.*sin(2*pi*fc.*t);
end


