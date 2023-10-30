%% konstanter
c = 299792458;
kb = 1.3806*10^-23;
NA = 6.02214076*10^23;
h  = 6.62607015*10^-34;
R  = NA*kb;
%% Givet
%fyll i
T = 650 + 273.15;
M = 0.027;
P = 10^5;

%% translation
% q anv�nds inte i ber�kningenqtr = (2*pi*(M/NA)*kb*T/(h^2))^(3/2)*R*T/P
% Utr = 3/2*NA*kb*T
Cvtr = 3/2*NA*kb

%% Rotation
%q anv�nds inte i ber�kningen Cv
% ---------------------------
%fyll i Bcm i cm^-1
%ickelinj�r
% Orot = h*c*B/kb
% if Orot < (T/50)
%     disp('Orot << T; qrot = 1/sigma*T/Orot')
% else
%     disp('Approximera inte')
% end
% qrot = 1/sigma*T/Orot
% Urot = NA*kb*T
Cvrot = NA*kb

%% vibration
% fyll i v�gtal vcm i cm^-1:
% q anv�nds inte i ber�kningen Cv
% ------------------------------
vcm = [2041, 712, 712, 3369]
v= vcm*100
for i = 1:length(v)
% qvib(i) = 1/(1- exp(-h*c*v(i)/(kb*T)))
% Uvib(i) = NA*h*c*v(i)*1/(exp(h*c*v(i)/(kb*T))-1)
Ovib(i) = h*c*v(i)/kb
Cvib(i) = R * Ovib(i)^2 * 1/T^2 * exp(Ovib(i)/T) * 1/(exp(Ovib(i)/T)-1)^2
end


%% presentera

Cvibtot= sum(Cvib)
Cvtot = Cvrot+Cvtr + Cvibtot
%vibrationsbidraget
bidrag = Cvibtot/Cvtot
