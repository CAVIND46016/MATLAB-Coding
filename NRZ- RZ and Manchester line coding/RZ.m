% https://www.mathworks.com/matlabcentral/fileexchange/40029-return-to-zero--rz--line-coding

b=input('Enter bit sequence: ');
l=length(b);
b(l+1)=0;
n=1;
while n<=l
    t=(n-1):.001:n;
    if b(n)==1
        if b(n+1)==b(n)
            y=(t<(n-0.5))+(t==n);
        else
            y=(t<(n-0.5));
        end
    else
        if b(n+1)==1
            y=0*(t<(n-0.5))+(t==n);
        else
            y=0*(t<(n-0.5));
        end
    end
    n=n+1;
    plot(t,y)
    hold on;
    axis([0 l -1.5 1.5]);
end
title('RZ');
xlabel('Time');
ylabel('Amplitude');