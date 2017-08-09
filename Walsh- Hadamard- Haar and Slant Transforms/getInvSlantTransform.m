function t=getInvSlantTransform(im,N)
s=sltmtx(N);
t=s'*im*s;