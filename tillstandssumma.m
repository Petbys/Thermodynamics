%% konstanter
c = 299792458;
kb = 1.3806*10^-23;
NA = 6.02214076*10^23;
h  = 6.62607015*10^-34;
R  = NA*kb;
%% Givet
%fyll i
T = 298;
M = 0.044;
P = 10^5;

%% translation
qtr = (2*pi*(M/NA)*kb*T/(h^2))^(3/2)*R*T/P
Utr = 3/2*NA*kb*T
Str = Utr/T + kb * NA * (log(qtr)-log(NA) +1)

%% Rotation
%fyll i Bcm i cm^-1
Bcm = 0.390
sigma = 2
B = Bcm*100

Orot = h*c*B/kb
if Orot < (T/50)
    disp('Orot << T; qrot = 1/sigma*T/Orot')
else
    disp('Approximera inte')
end
qrot = 1/sigma*T/Orot
Urot = NA*kb*T
Srot = NA*kb + kb*NA*log(qrot)

%% vibration
%fyll i v�gtal vcm i cm^-1:
vcm = [ ]
v= vcm*100
qvib =[]
Uvib = []
Svib = []
for i = 1:length(v)
qvib(i) = 1/(1- exp(-h*c*v(i)/(kb*T)))
Uvib(i) = NA*h*c*v(i)*1/(exp(h*c*v(i)/(kb*T))-1)
Svib(i) = Uvib(i)/T+kb*NA*log(qvib(i))
end


%% presentera

Stot = sum(Svib) + Srot + Str
