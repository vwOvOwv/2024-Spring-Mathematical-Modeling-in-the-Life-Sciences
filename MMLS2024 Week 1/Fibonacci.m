% Fibonacci rabbit example
% 2/22/2023
tmax = 10;   % specify final time

n0 = 1;     % specify initial population
n1 = 1;

n = zeros(1,tmax);
n(1,1) = n0;
n(1,2) = n1;
for i=3:tmax,
    n(1,i) = n(1,i-2) + n(1,i-1);
end;

figure(1); plot(n,'o-'); % open figure window & plot solution
