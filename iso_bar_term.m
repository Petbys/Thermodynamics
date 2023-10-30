%% givet

Tk = [425, 330]
P = [1.7, 0.75]
n = 2
%% konstanter
R = 8.314
%Cvm = 3/2*R
Cpm =29.1
Cp = n*Cpm

%% Isobar
%delta H

d_H1 = Cp*(Tk(2)-Tk(1))

%delta U
d_U1 = d_H1 - n*R*(Tk(2)-Tk(1)) 

%delta S
d_S1 = integral(@(T) Cp*1./T,Tk(1),Tk(2))

%% Isoterm
%delta U
d_U2 = 0
%delta H
d_H2 = 0
%delta S
d_S2 = integral(@(p) -n*R./p , P(1), P(2))

%% sammanställning

d_U = d_U1 + d_U2
d_H = d_H1 + d_H2
d_S = d_S1 + d_S2


