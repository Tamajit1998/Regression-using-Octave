## Author: Tamajit Das <tamajit@tamajit-Aspire-E5-575G>
## Created: 2019-07-30

function [theta,J] = gradientDescent(X,y,theta,alpha,iters)
m=length(y); 
theta=zeros(2,1);
J=zeros(iters,1);
 
for i=1:iters
 
  h_of_x = (X*theta).-y; # element wise elemination
  theta(1)=theta(1)-(alpha/m)*h_of_x'*X(:,1);
  theta(2)=theta(2)-(alpha/m)*h_of_x'*X(:,2);
  J(i)=1/(2*m)*sum(h_of_x.^2); 
  
  
end
fprintf('θ0 = %f \n θ1 = %f \n', theta(1), theta(2));
figure;
plot([1:iters],J,'linewidth',3)
endfunction
