function [phi,phi_test] = find_min_errors(x,y,x_test,errors)
    [~,ind1] = min(errors(1,:));
    [~,ind2] = min(errors(2,:));
    phi = LSR_jju4(x,y,ind1,0);
    phi_test = LSR_jju4(x,y,ind2,0);
    
    % Plotting models with min error values
    legend1 = sprintf('Training model, N=%d',ind1);
    legend2 = sprintf('Test model, N=%d',ind2);
    t = 'Models with min error values';
    plot_models(x,phi,legend1,x_test,phi_test,legend2,t);

end