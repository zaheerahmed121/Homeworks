A=imread('4.jpg');
subplot(1,3,1), imshow(A)
B= rgb2gray(A);
subplot(1,3,2), imshow(B)

[r, c, ~] = size(A);
c = round(c/2);
A([1:r],[1:c],1) = rgb2gray(A([1:r],[1:c],:));
for i = 2:3
  A([1:r],[1:c],i) = A([1:r],[1:c],1);
end
subplot(1,3,3), imshow(A)