clear;
global A B xd K;
x0 = [0;0;0];
xd = [0;0;5*pi/180];

A = [-0.3176 0.852 0;
     -0.0102 -0.1383 0;
     0 1 0];
B = [-0.005;
     -0.0217;
     0];

K = -place(A,B,[-1;-2;-3]);