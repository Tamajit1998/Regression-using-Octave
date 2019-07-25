## Author: Tamajit Das <tamajit@tamajit-Aspire-E5-575G>
## Created: 2019-07-23
function J = computecost (X,y,theta)

m=length(y);                 #Number of training Samples.
J=0;

hypot=X*theta;               #finding the hypothesis
error=[hypot-y];
sqr_error=error.^2;          #finding the squared error
J=1/(2*m)*(sum(sqr_error));  #find the value of cost function


endfunction
