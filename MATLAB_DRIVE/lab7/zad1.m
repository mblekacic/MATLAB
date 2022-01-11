slika=imread('slika6.jpg');
slika= double(slika);
dctr = dct(slika);
idctr = idct(dctr);

dctmat = double(dctr);
idctmat = double(idctr);
K1 = zeros(8,8);
K1(:)=99;

K1(1:8,1:8) = [16,11,10,16,24,40,51,61;12,12,14,19,26,58,60,55;14,13,16,24,40,57,69,56;14,17,22,29,51,87,80,62;18,22,37,56,68,109,103,77;24,35,55,64,81,104,113,92;49,64,78,87,103,121,120,101;72,92,95,98,112,100,103,99];
K1dct = dctmat./K1;
K1dct = round(K1dct);
imwrite (K1dct, 'dctK1.jpg');
K1idct = idct(K1dct);
imwrite (K1idct, 'idctK1.jpg');
figure();
imshow ('dctK1.jpg');
figure();
imshow ('idctK1.jpg');

K2 = 0.25.*K1
K2dct = dctmat./K2;
K2dct = round(K2dct)
imwrite (K2dct, 'dctK2.jpg');
K2idct = idct(K2dct);
imwrite (K2idct, 'idctK2.jpg');
figure();
imshow ('dctK2.jpg');
figure();
imshow ('idctK2.jpg');

K1_C = dctmat./K1;
K3 = 0.5.*K1
K3dct = dctmat./K3;
K5dct = round(K3dct)
imwrite (K5dct, 'dctK3.jpg');
K3idct = idct(K5dct);
imwrite (K3idct, 'idctK3.jpg');
figure();
imshow ('dctK3.jpg');
figure();
imshow ('idctK3.jpg');

K4 = 0.75.*K1
K4dct = dctmat./K4;
K5dct = round(K4dct)
imwrite (K5dct, 'dctK4.bmp');
K4idct =idct(K5dct);
imwrite (K4idct, 'idctK4.bmp');
figure();
imshow ('dctK4.bmp');
figure();
imshow ('idctK4.bmp');

K5 = 0.95.*K1
K5dct = dctmat./K5;
K5dct = round(K5dct)
imwrite (K5dct, 'dctK5.bmp');
K5idct = idct(K5dct);
imwrite (K5idct, 'idctK5.bmp');
figure();
imshow ('dctK5.bmp');
figure();
imshow ('idctK5.bmp');



 

