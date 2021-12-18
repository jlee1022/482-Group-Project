clear all;
clc;
%sym ML MW L JL JW d11 d12 d21 d22 g

%%%Parameters used from Silva-Ortigoza, R., & Hernández-Guzmán, V. M.(2018)
%%%Automatic Control with Experiments. Springer.
d = 0.146;
Rw = 0.0189;
ML = 0.05975;
MW = 0.058;
JL = 0.000048463;
JW = 0.0000076242;
g = 9.81;
Km = 0.00775;
R = 4.172;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
d11 = ML*(0.5*d)^2 + JL + MW*d^2 + JW;
d12 = JW;
d21 = d12;
d22 = d21;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
J = (d22*d11-d21*d12)/d12
D = [d11 d12;d21 d22]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
D0 = inv(D);
d011 = D0(1,1)
d012 = D0(1,2)
d021 = D0(2,1)
d022 = D0(2,2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
A = [0 1 0;
    d011*(0.5*ML+MW)*d*g 0 0;
    d021*(0.5*ML+MW)*d*g 0 0]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
B = [0;
    d012*(Km/R);
    d022*(Km/R)]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
C = eye(size(A))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%
D = zeros(size(C,1),size(B,2))
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
disp ('Is this system able to be controlled?');
control = ctrb(A,B);
if rank(control) == size(control)
    disp('YES');
else
    disp('NO');
end
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
lambda1 = -9.27 + 20.6i
lambda2 = -9.27 - 20.6i
lambda3 = -0.719
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
V = [lambda1 lambda2 lambda3]
K = place(A,B,V)
V0 = eig(A-B*K)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
sys = ss (A,B,C,D)
disp(sys);