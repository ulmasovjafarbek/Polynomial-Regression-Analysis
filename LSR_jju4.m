function reg_phi = LSR_jju4(x,y,N,lambda)
    A = x(:).^(N:-1:0);
    reg_phi = [A; lambda*eye(N+1)]\[y(:);zeros(N+1,1)];
    reg_phi = reg_phi.';
end