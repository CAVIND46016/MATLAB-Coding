function H =modHaarmtx(N)
H=haarmtx(N);
for i=1:N
    for j=1:N
        if H(i,j)<0
            H(i,j)=-1;
        elseif H(i,j)>0
            H(i,j)=1;
        end
    end
end