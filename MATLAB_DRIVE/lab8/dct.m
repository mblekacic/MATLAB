function y=DCT(x)

y=zeros(8,8);

sum=0;

for u =0:7

for v =0:7

for i =0:7

for j =0:7

sum=sum+(cos((((2*i)+1)*u*pi)/16)*cos((((2*j)+1)*v*pi)/16)*double(x(i+1, j+1)));

end

end

y(u+1,v+1)=sum*delta(u)*delta(v)/4;

sum=0;

end

end

end