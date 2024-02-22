% cell division example
% 2/22/2023
tmax = 1000;   % specify final time

n0 = 100;     % specify initial population
p = 0.95;      % survival fraction parameter
k = 1000;      % carrying capacity

n = zeros(1,tmax);
n(1,1) = n0;
for i=2:tmax,
    n(1,i) = 4 * p * n(1,i-1) * (1 - n(1,i-1)/k);
end;

figure(2); plot(n); % open figure window & plot solution
