% Computes the entropy of a user entered string.
% https://www.mathworks.com/matlabcentral/fileexchange/38295-compute-the-entropy-of-an-entered-text-string

function H = ComputeEntropy(s)  
if (ischar(s)==1)    % Checks whether s is a character array
l=length(s);
uniqueChars = unique(s);   % String s has all unique characters sorted
lenChar=length(uniqueChars);
f=zeros(1,lenChar);
for i=1:lenChar
    f(i)=length(findstr(s,uniqueChars(i)));  % Count the occurence of unique characters 
end
p=zeros(1,lenChar);
for i=1:lenChar
    p(i)=f(i)/l;       %  Probabilities for each unique character 
end
H=0;
for  i=1:lenChar
    H = H + (-p(i)*log2(p(i)));  % Calculating the Entropy
end 
else
    display('Invalid String');
end