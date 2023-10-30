%% konstanter
c = 299792458;
kb = 1.3806*10^-23;
NA = 6.02214076*10^23;
h  = 6.62607015*10^-34;
R  = NA*kb;

%% Givet
n = [0, 1]
g = [3, 1]
p = 0.05
lambda = 1268.6 %nm

ep = [0, h*c/lambda]
% p1 = qel(2)/(qel(1)+qel(2))
T = ep(2) / (kb*log (g(2) * (1-0.05)/(g(1)*0.05)))





