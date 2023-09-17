function compare(Ireal,Iscaned)
I1=im2double(Ireal);
I1 = rgb2gray(I1);
I2=im2double(Iscaned);
I2 = rgb2gray(Iscaned);
corners1 = detectMSERFeatures(I1);
% [features1, valid_corners1] = extractFeatures(I1, corners);
% figure; imshow(I1); hold on
% plot(valid_corners1);
c=length(corners1)
corners2 = detectMSERFeatures(I2);
% [features1, valid_corners2] = extractFeatures(I2, corners);
% figure; imshow(I2); hold on
% plot(valid_corners2);
d=length(corners2)
t=0.75*c
if(d>t)
h=msgbox("The note is Real")
else
h=msgbox("The note is fake")
end
7.6 Features.m
function Features(Ireal,Iscaned)
I1=im2double(Ireal);
I1 = rgb2gray(I1);
I2=im2double(Iscaned);
I2 = rgb2gray(Iscaned);
corners = detectMSERFeatures(I1);
[features1, valid_corners1] = extractFeatures(I1,corners);
figure; imshow(I1); hold on
plot(valid_corners1);
corners2 = detectMSERFeatures(I2);
[features2, valid_corners2] = extractFeatures(I2, corners);
figure; imshow(I2); hold on
plot(valid_corners2);

45

7.7 Edgesdetection.m
function edgesdetection(Ireal,Iscaned)
figure;
subplot(2,2,1);
imshow(Ireal);
I1=rgb2gray(Ireal);
title('Original Image');
subplot(2,2,2);
BW1 = edge(I1,'Canny');
BW2 = edge(I1,'Prewitt');
imshowpair(BW1,BW2);
title('Detected Edges');
subplot(2,2,3);
imshow(Iscaned);
I2=rgb2gray(Iscaned);
title('Original Image');
subplot(2,2,4);
BW1 = edge(I2,'Canny');
BW2 = edge(I2,'Prewitt');
imshowpair(BW1,BW2);
title('Detected Edges');
