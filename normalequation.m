
## Author: Tamajit Das <tamajit@tamajit-Aspire-E5-575G>
## Created: 2019-07-30

function [thetaNormal] = normalequation (X,y)
  thetaNormal = (pinv(X'*X))*X'*y;
 
endfunction
