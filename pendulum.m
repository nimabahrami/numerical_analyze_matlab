function pendulum

[~,y]=ode45(@pend,[0 200],[0 (10*pi/180)]);

plot(y(:,1),y(:,2));
xlabel('y1=teta')
ylabel('y2=dteta')
figure;
subplot 211;plot(y(:,1));
subplot 212;plot(y(:,2));

function DD= pend(t,y)

DD=[y(2);-sqrt(9.8)*sin(y(1))];