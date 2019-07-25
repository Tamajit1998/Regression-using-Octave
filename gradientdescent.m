## Author: Tamajit Das <tamajit@tamajit-Aspire-E5-575G>
## Created: 2019-07-24

function [theta,previousj] = gradientdescent (X,y,theta,alpha,iters)
m=length(y);
previousj= zeros(iters,1);

for i= 1:iters
  
  h=X*theta;
  error=[h-y];
  theta_change= alpha*((1/m)*(X'*error)); 
  theta = theta-theta_change;
  
  previousj(i)=computecost(X,y,theta);
end
disp(min(previousj));
end
