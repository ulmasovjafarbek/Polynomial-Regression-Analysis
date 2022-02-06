%% Preparing data for 5-fold cross validation
[d1,d2,d3,d4,d5] = divide_into_five(LargeData);
x_data = [d1(1,:);d2(1,:);d3(1,:);d4(1,:);d5(1,:)];
y_data = [d1(2,:);d2(2,:);d3(2,:);d4(2,:);d5(2,:)];
lambdas = [10^-6,10^-3,1,10^3,10^6];

%% a) Calculating validation errors
N = 6;
best_lambda = lambdas(1);
smallest_error = 100;

for lambda = lambdas
    fprintf('\nTest errors for lambda: %d\n',lambda);
    avg_error = fivefold_validation_for_lambda(x_data,y_data,N,lambda);
    if avg_error < smallest_error
        best_lambda = lambda;
        smallest_error = avg_error;
    end
end
fprintf('\nBest regularization weight is: %d\n',best_lambda);

%% b) Training model with best lambda
x = LargeData(1,:); x_test = TestData(1,:);
y = LargeData(2,:); y_test = TestData(2,:);

phi_reg = LSR_jju4(x,y,N,best_lambda);
training_error = cal_error(phi_reg,x,y);
test_error = cal_error(phi_reg,x_test,y_test);

%% c) Plotting model and printing out the coefficients
plot_data(x,y,x_test,y_test);
hold on;
plot(x,polyval(phi_reg,x),'r-','LineWidth',3);
title(sprintf('Model with best regularization weigth, lambda=%d',best_lambda));
    
fprintf('\nCoefficients of the best regularization weight:\n');
disp(phi_reg);
fprintf('\nTraining error: %d\n', training_error);
fprintf('\nTest error: %d\n', test_error);
    