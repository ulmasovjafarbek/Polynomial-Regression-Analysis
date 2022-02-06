%% Declaring variables
x = SmallData(1,:);
x_test = TestData(1,:);
y = SmallData(2,:);
y_test = TestData(2,:);

%% Calculating error with lambda regularization
N = 9;
lambda = 0.001;
phi_reg = LSR_jju4(x,y,N,lambda);
error = cal_error(phi_reg,x,y);
error_test = cal_error(phi_reg,x_test,y_test);

%% Plotting data
plot_data(x,y,x_test,y_test);

%% Plotting fitted models and comparing with ordinary model for N=9
phi = LSR_jju4(x,y,N,0);
title = sprintf('Regularized model, lambda = %d', lambda);
plot_models(x,phi_reg,'Regularized model',x,phi,'Ordinary model',title);

%% Printing out regularized model coefficients
disp(phi_reg);