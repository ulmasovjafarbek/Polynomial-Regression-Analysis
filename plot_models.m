function plot_models(x_1,phi_1,legend1,x_2,phi_2,legend2,plot_title)
    plot(x_1,polyval(phi_1,x_1),'k-','LineWidth',2);
    hold on;
    plot(x_2,polyval(phi_2,x_2),'b--','LineWidth',2);
    title(plot_title);
    legend(legend1,legend2);
end