function errors = get_errors_table(x,y,x_test,y_test,N)
errors = zeros(2,N);
for i = 1:N
    phi = LSR_jju4(x,y,i,0);
    error = cal_error(phi,x,y);
    error_test = cal_error(phi,x_test,y_test);
    errors(1,i) = error;
    errors(2,i) = error_test;
end
end