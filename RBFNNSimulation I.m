%% Define data
x=linspace(0,4*pi, 3000);
y=(sin(x) + cos(x) + tanh(x)) + rand(1,3000);
%%Create radial basis function Neural Network
net=newrb(x,y,0.1,1,100,10);
view(net)
results=sim(net,x);
%% Plots
scatter(x,y);
hold on;
plot(x,results,"LineWidth",2,"MarkerSize",10)
R=regression(y,results);
