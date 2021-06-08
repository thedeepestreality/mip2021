function dx = right_part(x)
th1 = x(1);
th2 = x(2);
dth1 = x(3);
dth2 = x(4);
w = [dth1;dth2];
u = x(5);
tau = [u;0];
m1 = 1;
m2 = 1;
L1 = 1;
L2 = 1;
g = 9.8;
f = [0.6;0.6];

D = [(m1+m2)*L1*L1+m2*L2*L2+2*m2*L1*L2*cos(th2) m2*L2*L2+m2*L1*L2*cos(th2)
	m2*L2*L2+m2*L1*L2*cos(th2) m2*L2*L2];
	
C = [-m2*L1*L2*sin(th2)*dth2*(2*dth1+dth2);
     m2*L1*L2*sin(th2)*dth1*dth1];
	 
g = [(m1+m2)*g*L1*sin(th1)+m2*g*L2*sin(th1+th2);
	m2*g*L2*sin(th1+th2)];

dx = [w;
      D\(tau - C - g - f.*w)];