
Z = imread('5.jpg'); 
FaceDetect1 = vision.CascadeObjectDetector; 
FaceDetect1.MergeThreshold = 7 ;
BB = step(FaceDetect1, Z); 
figure(1);
imshow(Z); 
for i = 1 : size(BB,1)     
  rectangle('Position', BB(i,:), 'LineWidth', 3, 'LineStyle', '-', 'EdgeColor', 'r'); 
end 
for i = 1 : size(BB, 1) 
  A = imcrop(Z, BB(i, :)); 
  figure(3);
  subplot(6, 6, i);
  imshow(A); 
end