function Outstd=Mystd(inVec)
n=length(inVec);
mu=mean(inVec);
Variance=sum(((inVec-mu).^2))/(n-1);
Outstd=Variance^0.5; % sqrt(Variance)
% end