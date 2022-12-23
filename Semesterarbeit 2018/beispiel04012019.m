

I = imread('biomasse01.jpg'); 
% I = rgb2hsv(I);
figure
image(I)
h = imhist(I) % this will have default bins 256
% now second image 
J = imread('biomasse015.jpg'); 
% J = rgb2hsv(J);
figure
image(J)
h1 = imhist(J) % this will have default bins 256 
E_distance = sqrt(sum((h-h1).^2));

h_new = repmat(h,1,size(h1,2));
E_distance = sqrt(sum((h_new-h1).^2));