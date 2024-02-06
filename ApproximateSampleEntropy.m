function [ApEn, SpEn] = ApproximateSampleEntropy(x, d, r)
% Calculates Approximate and Sample Entropy
% Inputs: x - data vector, d - pattern length dimension, r - criterion of similarity (optional, defaults to 0.2*std(x))
% Outputs: ApEn - Approximate Entropy, SpEn - Sample Entropy

if nargin < 3
    r = 0.2*std(x);
end

N = length(x);
phi = zeros(2,1);
for k = 1:2
    q = d+k-1;
    n = zeros(N-q+1,1);
    c = zeros(N-q+1,1);
    for i = 1: N-q+1
        segment1 = x(i:i+q-1);
        for j = 1:N-q+1
            segment2 = x(j:j+q-1);
            distance = max(abs(segment1-segment2));
            if distance < r
                n(i) = n(i)+1;
            end
        end
        c(i) = n(i)/(N-q+1);
    end
    phi(k) = sum(log(c))/(N-q+1);
end

ApEn = phi(1)-phi(2);
SpEn = -log(sum(c)/sum(n));

end

