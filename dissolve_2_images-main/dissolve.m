iter = 10; 
Z = im2double(imread('1.jpg'));
A = im2double(imread('5.jpg'));
Z = imresize(Z, [520 520]);
A = imresize(A,[520 520]);
M = A - Z;
M = M./iter;

for i=1:iter
   Z = Z + M;
   imshow(Z);
   pause(0.1);    
end