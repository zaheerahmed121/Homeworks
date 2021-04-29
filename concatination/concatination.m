a=imread('1.jpg');
b=imread('1.jpg');
 subplot(3,1,1), imshow (a);
imshow(rgb2gray(a));
 subplot(3,1,2), imshow (b);
 imshow(im2bw(b));
comb=imfuse(a,b, 'montage');
subplot(1,1,1), imshow(comb);