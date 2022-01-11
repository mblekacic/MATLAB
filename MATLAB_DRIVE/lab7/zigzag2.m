function x=zigzag2(y)

N=sqrt(length(y));
x=zeros(N);
n=0;

for i=1:N
    for j=1:i
            n=n+1;
            if mod(i,2)==0
                x(j,i-j+1)=y(n);
            else
                x(i-j+1,j)=y(n);
            end
    end
end

for i=1:N-1
    for j=N:-1:i+1
            n=n+1;
            if mod(i,2)==0
                x(N-j+i+1,j)=y(n);                
            else
                x(j,N-j+i+1)=y(n);
            end
    end
end

end