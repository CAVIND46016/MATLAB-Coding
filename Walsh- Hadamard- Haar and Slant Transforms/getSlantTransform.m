function t=getSlantTransform(im,N)
s=sltmtx(N);
t=s*im*s';