%% konstanter
c = 299792458;
kb = 1.3806*10^-23;
NA = 6.02214076*10^23;
h  = 6.62607015*10^-34;
R  = NA*kb;

%% Givet
n = [0, 1]
T = 298.15
%v0 = 6.43*10^12
vcm = 208
v = vcm*100
qvib = 1/(1- exp(-h*c*v/(kb*T)))
%qvib = 1/(1- exp(-h*v0/(kb*T)))
ep = []
for i=1:length(n)
    ep(i) = (i-1)*h*c*v
    Ni_Ntot(i) = exp(-ep(i)/(kb*T))/qvib
end

N12 =  Ni_Ntot(1)+ Ni_Ntot(2)