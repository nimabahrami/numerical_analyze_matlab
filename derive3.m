function DD=derive3(f,h,a)
% Approximate the second derivative of a function at x=a by formula
% f''(a)=f(x+h)-2f(x)+f(x-h)/h^2
disp('    Second derivative of a function f(x) at point a')
disp('_________________________________________________________')
disp('  a         h           DD(a)                             ')
disp('_________________________________________________________')
DD(a)=(feval(f,a+h)-2*feval(f,a)+feval(f,a-h))/(h^2);
fprintf('%6.4f %8.4f %12.4f\n',a,h,DD(a));
   fprintf('\n');
end
