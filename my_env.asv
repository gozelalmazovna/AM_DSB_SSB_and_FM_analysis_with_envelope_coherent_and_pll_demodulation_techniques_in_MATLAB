function [z,t] = my_env(y,fc)
%Envelope detector
ts = 1e-5;
fs = 1/ts;
fsofc = round(fs/fc);
n2 = length(y);
v = zeros(1,round(n2/fsofc));
R_L = 1000;
C= 0.01e-6;
l=0;
v(1) = y(1);
for k = 1:fsofc:n2-fsofc
    l=l+2;
    v(l)=y(k)*exp(-ts/(R_L*C)/fsofc);
    v(l+1)=y(k+fsofc);
end
z = v;
t = 0:fsofc/2:(length(v)-1)*fsofc/2;
end