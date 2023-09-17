function call(Ireal,Iscaned)
hsvImageReal = rgb2hsv(Ireal);
hsvImagescaned = rgb2hsv(Iscaned);
croppedImageReal = hsvImageReal(:,90:95,:);
croppedImagescaned = hsvImagescaned(:,93:98,:);
satThresh = 0.4;
valThresh = 0.3;
BWImageReal = (croppedImageReal(:,:,2) > satThresh &
croppedImageReal(:,:,3) < valThresh);
figure;
subplot(1,2,1);
imshow(BWImageReal);
title('Real initial seg');
BWImagescaned = (croppedImagescaned(:,:,2) > satThresh &
croppedImagescaned(:,:,3) < valThresh);
subplot(1,2,2);
imshow(BWImagescaned);
title('scaned');
%%//Post-process
se = strel('line', 6, 90);
BWImageCloseReal = imclose(BWImageReal, se);
BWImageClosescaned = imclose(BWImagescaned, se);
figure;
subplot(1,2,1);
imshow(BWImageCloseReal);
title('Real post process');
subplot(1,2,2);
imshow(BWImageClosescaned);
title('scaned');
%%//Area open the image
figure;
areaopenReal = bwareaopen(BWImageCloseReal, 15);
subplot(1,2,1);
imshow(areaopenReal);
title('Real area open image');
subplot(1,2,2);
areaopenscaned = bwareaopen(BWImageClosescaned, 15);
imshow(areaopenscaned);
title('scaned');

43
%//Count how many objects there are
[~,countReal] = bwlabel(areaopenReal);
[~,countscaned] = bwlabel(areaopenscaned);
disp(['The total number of black lines for the real note is: '
num2str(countReal)]);
disp(['The total number of black lines for the scaned note is: '
num2str(countscaned)]);
grt = rgb2gray(Ireal);
grs = rgb2gray(Iscaned);
% contrast enhance the gray image to emphasize dark lines in
lighter background
grt = imadjust(grt);
grs = imadjust(grs);
% close rgb. choose a larger k. idea is to remove the dark line
k = 7;
se = ones(k);
Irealcl = imclose(Ireal, se);
Iscanedcl = imclose(Iscaned, se);
% convert closed image to gray scale
grtcl = rgb2gray(Irealcl);
grscl = rgb2gray(Iscanedcl);

% take the difference (closed-gray-scale - contrast-enhanced-
gray-scale)

difft = grtcl - grt;
diffs = grscl - grs;
% take the projection of the difference
pt = sum(difft');
pf = sum(diffs');
% smooth the projection
ptfilt = conv(pt, ones(1, k)/k, 'same');
pffilt = conv(pf, ones(1, k)/k, 'same');
% threshold (multiplication by max element is just for
visualization)
tht = (pt > graythresh(pt))*max(pt);
thf = (pf > graythresh(pf))*max(pf);
% get the number of segments.
[lblt, nt] = bwlabel(tht);
[lblf, nf] = bwlabel(thf);
figure,
subplot(2, 1, 1), imshow(difft'), title('difference image for
solid line')
subplot(2, 1, 2), imshow(diffs'), title('difference image for
broken line')
figure,
subplot(2, 1, 1), plot(1:length(pt), pt, 1:length(pt), ptfilt,
1:length(pt), tht),
title('solid line image'),
legend('projection', 'smoothed', 'thresholded', 'location',
'eastoutside')

44

subplot(2, 1, 2), plot(1:length(pf), pf, 1:length(pf), pffilt,
1:length(pf), thf),
title('broken line image'),
legend('projection', 'smoothed', 'thresholded', 'location',
'eastoutside')
