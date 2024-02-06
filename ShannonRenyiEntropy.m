function [Shannon, Renyi] = ShannonRenyiEntropy(P)
% Calculates Shannon and Renyi Entropy
% Input: P - PSD vector (for example, calculated using pwelch)
% Outputs: Shannon - Shannon Entropy, Renyi - Renyi Entropy

p = P/sum(P);

Shannon = sum(p(p~=0).*log10(1./p(p~=0)));
Renyi = -log10( sum(p(p~=0).^2) );

end

