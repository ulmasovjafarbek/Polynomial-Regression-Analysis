%% Declaring variables
x = SmallData(1,:);
x_test = TestData(1,:);
y = SmallData(2,:);
y_test = TestData(2,:);

%% a) Calculating training and test data errors for models of 1 to 9
N = 9;
errors = get_errors_table(x,y,x_test,y_test,N);
disp(errors);

%% b) Plotting all data (training data and test data)
plot_data(x,y,x_test,y_test);

%% c) Plotting two fitted models with smallest error values
[phi, phi_test] = find_models_with_min_error(x,y,x_test,errors);

%% d) Printing model coefficients from section c
disp(phi);
disp(phi_test);
