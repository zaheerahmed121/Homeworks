[logo, map, alpha] = imread('LOGO.png');
 A = imread('5.jpg');
 logoResize = imresize(logo, 0.1, 'bilinear');
 alphaResize = imresize(alpha, 0.1, 'bilinear');
 alphaResize = repmat(alphaResize, [1 1 3]);
 alphaResize = im2double(alphaResize);

 rows = size(logoResize, 1);
 cols = size(logoResize, 2);
A(1:rows,end-cols+1:end,:) = uint8(alphaResize.*double(logoResize) + ...
(1-alphaResize).*double(A(1:rows,end-cols+1:end,:))); 
imshow(A);
