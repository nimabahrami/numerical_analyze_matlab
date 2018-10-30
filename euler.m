function y=euler(f,a,b,y0,n)
h=(b-a)/n;
y=y0;
disp('The approximated  yi for your considered n is:        ')
disp('Note that: Plot of calculated function available.   ')
        disp('     ti            yi     ')
for i=1:n
    t=a+(i-1)*h;
    m=feval(f,t,y);
    y=y+h*m;
    f1(i)=y;
    t=t+h;
    x(i)=t;
    g='n';
    if(g~='n')
        error=abs(g-y)
        fprintf('%6.2f  %12.6f  %12.6f  %12.6f   %8.6f \n',t,m,y,g,error)
    else
        
        fprintf(' %12.6f  %12.6f \n',t,y)
    end
    
end

plot(x,f1)