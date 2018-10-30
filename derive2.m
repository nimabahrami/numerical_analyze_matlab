function D=derive2(f,h,a)
% Approximate the derivative of a function at x=a by formula
% f'(x)=f(x+h)-f(x-h)/2h
disp('    First derivative of a function f(x) at point a')
disp('_________________________________________________________')
disp('  a         h           D(a)                             ')
disp('_________________________________________________________')
D(a)=(feval(f,a+h)-feval(f,a-h))/(2*h);
fprintf('%6.4f %8.4f %12.4f\n',a,h,D(a));
   fprintf('\n');
end
