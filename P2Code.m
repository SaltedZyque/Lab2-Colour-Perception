imfinfo('peppers.png');

RGB = imread('peppers.png');
imshow(RGB)

% Convert greyscale and show side by side
I = rgb2gray(RGB);
figure  % this starts a new figure window
imshow(I)

imshowpair(RGB, I, 'montage')
title('Original colour image (left) grayscale image (right)');

% Splitting to RGB channels
[R,G,B] = imsplit(RGB);
montage({R, G, B},'Size',[1 3])

% Splitting to HSV channels
HSV = rgb2hsv(RGB);
[H,S,V] = imsplit(HSV);
montage({H, S, V}, 'Size', [1 3])

% Splitting to XYZ channels
XYZ = rgb2xyz(RGB);
[X,Y,Z] = imsplit(XYZ);
montage({X,Y,Z}, 'Size', [1 3])