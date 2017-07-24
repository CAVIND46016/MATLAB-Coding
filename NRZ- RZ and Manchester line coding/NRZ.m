% https://www.mathworks.com/matlabcentral/fileexchange/40028-non-return-to-zero--nrz--line-code

b=input('Enter bit sequence: ');
l=length(b);
b(l+1)=0;
n=1;
while n<=l
    t=(n-1):.001:n;
    if b(n)==1
        if b(n+1)==b(n)
            y=(t<=n);
        else 
            y=(t<n);
        end
    else
        if b(n+1)==b(n)
            y=(t>n);
        else
            y=(t>=n);
        end
    end
    plot(t,y)
    hold on;
    axis([0 l -1.5 1.5]);
    n=n+1;
end
title('NRZ');
xlabel('Time');
ylabel('Amplitude');