function [z] = my_PLL(y,fc)
%Phase locked loop
j = sqrt(-1);
fs=1e5;%Sample frequency
phi_hat(1)=30; 
z(1)=0; 
phd_output(1)=0; 
vco(1)=0; 
%Define Loop Filter parameters(Sets damping)
kp=0.15; %Proportional constant 
ki=0.1; %Integrator constant 
%PLL implementation 
for n=2:length(y) 
    vco(n)=conj(exp(j*(2*pi*n*fc/fs+phi_hat(n-1))));%Compute VCO 
    phd_output(n)=imag(y(n)*vco(n));%Complex multiply VCO x Signal input 
    z(n)=z(n-1)+(kp+ki)*phd_output(n)-ki*phd_output(n-1);%Filter integrator 
    phi_hat(n)=phi_hat(n-1)+z(n);%Update VCO 
end

end

