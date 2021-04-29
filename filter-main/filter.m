A=imread('5.jpg');
G=fspecial('gaussian', [300 300], 100); 
Ig=imfilter(A,G,'same'); 
JK=A-Ig; 
subplot(1,2,1),imshow(A) 
subplot(1,2,2),imshow(JK) 
