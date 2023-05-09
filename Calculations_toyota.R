"pole calculation:"

C1 <- 18.6
C2 <- 38.2
C3 <- 102.2
C4 <- 116.8
C5 <- 9

l_ = 0.399
Sp=l_*1.35
mp=1325
Vchoc <- 31.2/3.6
l <- 3.6

"MDB:"

C7 <- 14
C8 <- 47.4
C9 <- 137.3
C10 <- 110
C11 <- 20.9

 
mb <- 1396.6
Sb <-0.937
lb <- 1.676

Cm=(C1/2 + C2 +C3 +C4 + C5/2)/4
b0 = 2.23
b1 = (Vchoc - b0)/Cm/10^-3

A = mp*b0*b1/l
B = mp*b1*b1/l

alpha1 = (C1+ 2*C2 + 2*C3 + 2*C4 + C5 )*10^-3
beta1 = (C1*C1 + 2*C2*C2 + 2*C3*C3 + 2*C4*C4 + C5*C5 +C2*C3 + C3*C4 + C4*C5 )*10^-6


Ep=l*(alpha1*A/2+beta1*B/6+4*A*A/B/2)/4
vp=sqrt(2*Ep/mp)*3.6

A_=A/Sp
B_=B/Sp




alpha2 = (C7+ 2*C8 + 2*C9 + 2*C10+C11)*10^-3
beta2 = (C7*C7 + 2*C9*C9 + 2*C8*C8 + 2*C10*C10 + C11*C11  +C8*C9 +C10*C9 + C10*C11)*10^-6


Etot=0.5*mb*62.3*62.3/3.6/3.6
resistance1 = 45
resistance = 245
EMDB=resistance * 0.937 * 6894 * 0.069

vr=sqrt(2*0.6*5*9.8)
ECR=0.5*mb*vr*vr


A2=A_*Sb
B2=B_*Sb
"Energy according to the new formula"
Ebadr=lb*(alpha2*A2/2+beta2*B2/6+4*A2*A2/B2/2)/4
v=sqrt(2*Ebadr/mb)*3.6

Ec=lb*(alpha2*A/2+beta2*B/6+4*A*A/B/2)/4
vc=sqrt(2*Ec/mb)*3.6
