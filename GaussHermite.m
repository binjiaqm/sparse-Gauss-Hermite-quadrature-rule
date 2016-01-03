function [x, w] = GaussHermite(n)


i   = 1:n-1;
a   = sqrt(i/2);
CM  = diag(a,1) + diag(a,-1);


[V L]   = eig(CM);
[x ind] = sort(diag(L));
V       = V(:,ind)';
w       = sqrt(pi) * V(:,1).^2;

x=x'*sqrt(2);
w=w'/sum(w);