%==================== Loading The Data=================%
x=csvread('insurance.csv');
X=x(:,1);
y=x(:,7);
m=length(y);
normy = y - min(y(:))
y= normy ./ max(normy(:)) % *
%====================plotting The data==================%
plotData(X,y)

%====================cost function======================%
%Assigning Some important terms
X = [ones(m, 1), x(:,1)];
theta = zeros(2,1)
iters=1500;
alpha=0.001;  % Alpha is the learning rate.
J=computecost(X,y,theta);
fprintf("When theta = [0,0] \ncost Computed: %f",J);

%===================gradient Descent====================%
theta =  gradientdescent(X,y,theta,alpha,iters);
fprintf('Theta found by gradient descent:');
fprintf('%f\n',theta);
