%==================== Loading The Data=================%
x=csvread('insurance.csv');
X=x(:,1);
y=x(:,7);
m=length(y);
%normy = y-min(y(:));
%y = normy./max(y(:));
%====================plotting The data==================%
plotData(X,y)

%====================cost function======================%
%Assigning Some important terms
X = [ones(m, 1), x(:,1)];
theta = zeros(2,1)
iters=1500;
alpha=0.001;  % Alpha is the learning rate.
J=computecost(X,y,theta);
fprintf("When theta = [0,0] \ncost Computed: %f\n",J);
J=computecost(X,y,[-1;2]);
fprintf("When theta = [-1 2] \ncost computed: %f\n",J);

%===================gradient Descent====================%
theta =  gradientDescent(X,y,theta,alpha,iters);
thetaNormal = normalequation(X,y);
fprintf('Theta found by gradient descent:');
fprintf('%f\n',theta);
fprintf('Theta found by Normal Equation:');
fprintf('%f\n',thetaNormal);

hold on;
plot(X(:,2),X*thetaNormal,'-','linewidth',3)
hold off;
 %==============Predicting Value==========================%
predict=[1,50] 
predict1 = predict *thetaNormal;
fprintf('For Age = 50, According to our prediction Your Premium will be %.2f\n',...
    predict1);
hold on;
for i=predict
  plot(i,[1,i]*thetaNormal,'g*','MArkerSize',14);
end
hold off;
 
 


