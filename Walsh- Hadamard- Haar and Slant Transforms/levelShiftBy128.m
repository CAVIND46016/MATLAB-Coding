function t=levelShiftBy128(im)
t=zeros(size(im));
[s1 s2]=size(im);
for i=1:s1
    for j=1:s2
        t(i,j)=im(i,j)-128;
    end
end