function y=zigzag(x)

N=size(x,1);
y=zeros(1,N.^2);
n=0;

for i=1:N
    for j=1:i
            n=n+1;
            if mod(i,2)==0
                y(n)=x(j,i-j+1);
            else
                y(n)=x(i-j+1,j);
            end
    end  
end

for i=1:N-1
    for j=N:-1:i+1
            n=n+1;
            if mod(i,2)==0
                y(n)=x(N-j+i+1,j);                
            else
                y(n)=x(j,N-j+i+1);
            end
    end
end

end