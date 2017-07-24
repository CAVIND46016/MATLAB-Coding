% If alpha is a primitive root of q,then alpha^1,alpha^2,aplha^3,......alpha^(q-1)mod q 
% must generate distinct integers from 1 to q-1.
% This concept is useful for study of discrete logarithms.
% This is used in the Diffie-Hellman Key exchange, where q and alpha are global variables 
% selected by a user which is public.
% https://www.mathworks.com/matlabcentral/fileexchange/38188-primitive-root

function p=checkPrimitive(q,alpha)
p=0;
a=zeros(1,length(q-1));
for i=1:q-1
    a(i)=powermod(alpha,i,q);
end
b=zeros(1,q-1);
b=unique(a);
if length(a)==length(b)
    p=1;
end