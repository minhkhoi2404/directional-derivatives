syms x y
f = input('Enter equations contain x and y: ');
v = input('enter vector you want to do derivative: ');
u1 = v(1) / sqrt(v(1)^2 + v(2)^2);
u2 = v(2) / sqrt(v(1)^2 + v(2)^2);
x0 = input('enter x0: ');
y0 = input('enter y0: ');
fx = diff(f,x);
fy = diff(f,y);
fx_sub = subs(fx, [x y], [x0 y0]);
fy_sub = subs(fx, [x y], [x0 y0]);
d = fx_sub*u1 + fy_sub*u2;
disp(d);