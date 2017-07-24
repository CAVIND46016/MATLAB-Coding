% https://www.mathworks.com/matlabcentral/fileexchange/40030-manchester-line-coding

b=input('Enter bit sequence: ');
l=length(b);
b(l+1)=0;
n=1;
 while n<=l
    t=(n-1):.001:n;
    if b(n)==1
        if b(n+1)==0
            y=(t<(n-0.5))+(-1)*(t>=n-0.5&t<=n);
        else
            y=(t<(n-0.5)|t==n)+(-1)*(t>=n-0.5&t<n);
        end
    else
        if b(n+1)==1
            y=(-1)*(t<(n-0.5))+(t>=n-0.5&t<=n);
        else
             y=(-1)*(t<(n-0.5)|t==n)+(t>=n-0.5&t<n);
        end
    end
    plot(t,y)
    hold on;
    axis([0 l -1.5 1.5]);
    n=n+1;
 end
title('Manchester');
xlabel('Time');
ylabel('Amplitude');
