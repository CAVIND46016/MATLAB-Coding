function t=getInvHaarTransform(im,N)
h=haarmtx(N);
m=log2(N);
t=h'*im*h;