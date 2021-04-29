zaheer=imread('1.jpg');
zaheer = imresize(zaheer,[300,300]);
ahmed=imread('2.jpg');
ahmed = imresize(ahmed,[300,300]);
subplot(3,2,1), imshow(zaheer);
subplot(3,2,2),imhist(zaheer);

subplot(3,2,3), imshow(ahmed);
 subplot(3,2,4), imhist(ahmed);

