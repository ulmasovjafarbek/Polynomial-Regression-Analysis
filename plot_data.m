function plot_data(x,y,x_test,y_test)
    plot(x,y,'ko','LineWidth',2);
    hold on;
    plot(x_test,y_test,'bo','LineWidth',2);
    title('Training Data vs Test Data');
    legend('Training data','Test data');
end