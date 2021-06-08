A = [ 2  3 -2;
     -2  5  1;
      1 -3  2 ];
B = [1 -1;
     2 1;
    -4 2];
C = [1 1 0;
    0 0 1];
D = zeros(2);

ss_sys = ss(A,B,C,D)
tf_sys = tf(ss_sys)
zpk_sys = zpk(ss_sys)
step(ss_sys)

