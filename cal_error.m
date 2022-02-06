function RMS = cal_error(phi,x,y)
    y_hat = polyval(phi,x);
    E = y_hat-y;
    RMS = sqrt(mean(E.^2));
end
