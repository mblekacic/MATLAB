slika=imread("lab8.jpg");
imwrite(slika,"lab8.jpg");
imshow("lab8.jpg");
slika1=uint8(zeros(192:192:3));

for i=1:8:192
    for j=1:8:192  
        for k=1:1:3
        blok= slika(i:i+7, j:j+7,k)
        dctmat=dct(blok);
        zigzag_vec=zigzag(dctmat);
        zigzag_vec = myp(75,zigzag_vec);
        zigzag2_vec=zigzag2(zigzag_vec);
        idctmat=uint8(idct(zigzag2_vec));
        slika1(i:i+7, j:j+7,k)=idctmat;
        end 
    end
end 


imwrite(slika1,"slika4.jpg");
figure();
imshow("slika4.jpg");
