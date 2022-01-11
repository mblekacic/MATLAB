slika=imread("siva.jpg");
imwrite(slika,"siva.jpg");
imshow("siva.jpg");
slika1=uint8(zeros(192:192));
for i=1:8:192
    for j=1:8:192  
        blok = slika(i:i+7, j:j+7)
        dctmat=dct(blok);
        zigzag_vec=zigzag(dctmat);
        zigzag_vec = myp(95,zigzag_vec);
        zigzag2_vec=zigzag2(zigzag_vec);
        idctmat=uint8(idct(zigzag2_vec));
        slika1(i:i+7, j:j+7)=slika1(i:i+7, j:j+7)+idctmat;
    end 
end 


imwrite(slika1,"slika4.jpg");
figure();
imshow("slika4.jpg");

