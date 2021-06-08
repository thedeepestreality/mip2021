A=[1 0;1/4 1/2];
B = [0;1/4];
C = [1/4 1/2];
D = 1/4;
dt = 0.05;
ss_obj = ss(A,B,C,D,dt);
[y,t] = impulse(ss_obj);
%[y,t] = lsim(ss_obj,[1,0,0,0,0,0,0],[0,0.05,0.1,0.15,0.2,0.25,0.3]);
plot(t,y);
den=zeros(1,length(y'));
den(1) = 1;
tf_obj = tf(y',den,dt)
conv_obj = ss(tf_obj,'min')