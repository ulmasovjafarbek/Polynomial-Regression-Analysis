function avg_error = fivefold_validation_for_lambda(x_data,y_data,N,lambda)
    m = length(x_data(:,1));
    error_sum = 0;
    for i = 1:m
        [x_training, x_test] = separate_data(x_data,i);
        [y_training, y_test] = separate_data(y_data,i);
        
        phi_reg = LSR_jju4(x_training,y_training,N,lambda);
        test_error = cal_error(phi_reg,x_test,y_test);
        error_sum = error_sum + test_error;
        fprintf('Test error for i=%d: %d\n',i,test_error);
    end
    avg_error = error_sum/m;
    fprintf('AVERAGE ERROR: %d\n',avg_error);
end