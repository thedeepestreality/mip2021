function u = ctrl(x)
global xd K;
u = K*(x-xd);

end