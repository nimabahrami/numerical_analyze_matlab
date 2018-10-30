function Modified_fals(f,a,b,tol,n)
% False position method for solving the nonlinear
% equation f(x)=0.
a0=a;
b0=b;
iter=0;
F=feval(f,a);
G=feval(f,b);
c=(G*a-F*b)/(G-F);
W=feval(f,c);
disp('_________________________________________________________________')
disp(' iter     a             b          c            f(c)      |b-a|')
disp('_________________________________________________________________')
fprintf('\n')
if (F*G<=0)
   while (abs(W)>tol)&&(abs(b-a)>tol)&&(iter<=n)&&((G-F)~=0)
      W=feval(f,c);
      fprintf('%2.0f %12.4f %12.4f  %12.6f  %10.6f %10.6f\n',iter,a,b,c,W,abs(b-a))
      if (W*F<0)
         b=c;G=W;F=F/2;
      end
      if (W*F>0)
         a=c;F=W;G=G/2;
      end
      iter=iter+1;
      c=(G*a-F*b)/(G-F);
   end
   if (iter>n)
      disp('  Method failed to converge')
   end
   if (G-F==0)
      disp('  Division by zero')
   end
else
   disp('  The method cannot be applied f(a)f(b)>0')  
end 
% Plot f(x) in the interval [a,b].
fplot(f,[a0 b0])
xlabel('x');ylabel('f(x)'); grid         
   