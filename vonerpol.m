function vonerpol
% vonderpole oscilator - ode45
% saeed59tb@gmail.com
[~,y]=ode45(@vdp1,[0 100],[1.2 0]);
 
plot(y(:,1),y(:,2))
xlabel('y1')
ylabel('y2')
figure;subplot 211;plot(y(:,1));subplot 212;plot(y(:,2))
 
function dydt=vdp1(t,y)
epsilon=5;
w=2.466;
f=5;
dydt=[y(2) ; epsilon*(1-y(1)^2)*y(2)-y(1)+f*cos(w*t)];
 