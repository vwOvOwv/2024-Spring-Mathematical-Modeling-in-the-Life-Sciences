% cell division example
% 2/22/2023
tmax = 100;   % specify final time

n0 = 100;     % specify initial population
p = 0.26;      % survival fraction parameter

n = zeros(1,tmax);
n(1,1) = n0;
for i=2:tmax,
    n(1,i) = 4 * p * n(1,i-1);
end;

figure(1); plot(n); % open figure window & plot solution
