function dx = rp(in)
global A B;
x = in(1:3);
u = in(4);

dx = A*x + B*u;

end