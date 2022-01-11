function y=IDCT(x)

y=zeros(8,8);

sum=0;

for u =0:7

for v =0:7

for i =0:7

for j =0:7

sum=sum+(delta(i)*delta(j)*cos((((2*u)+1)*i*pi)/16)*cos((((2*v)+1)*j*pi)/16)*double(x(i+1, j+1)));

end

end

y(u+1,v+1)=sum/4;

sum=0;

end

end

end