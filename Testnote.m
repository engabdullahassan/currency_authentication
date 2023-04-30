clear; close all; clc;
a = imread("U:\DIP\Project\testnoteUV.png");
subplot(4,4,1);
imshow(a);

b = rgb2gray(a);
subplot(4,4,2);
imshow (b);

%identification marks
c = b(160:300,20:100,:);
subplot(4,4,3);
imshow(c);

%serial number
d = b(390:500,810:1250,:);
subplot(4,4,4);
imshow(d);

%watermark
e = b(206:420,428:690,:);
subplot(4,4,5);
imshow(e);

%security thread
f = b(170:480,745:795,:);
subplot(4,4,6);
imshow(f);

%latency image
g = b(405:465,95:320,:);
subplot(4,4,7);
imshow(g);

%edge detection for identification mark
BWc = edge(c,"canny");
subplot(4,4,8);
imshow(BWc);

%edge detection for serial number
h = medfilt2(d);
BWh = edge(h,"canny");
subplot(4,4,9);
imshow(BWh);

%edge detection for watermark
BWe = edge(e,"canny");
subplot(4,4,10);
imshow(BWe);

%edge detection for security thread
BWf = edge(f,"canny");
subplot(4,4,11);
imshow(BWf);

%edge detection for latency image
BWg = edge(g,"canny");
subplot(4,4,12);
imshow(BWg);

meanGrayLevelBWc = mean2(BWc(1:141,1:81));

meanGrayLevelBWh = mean2(BWh(1:111,1:441));

meanGrayLevelBWe = mean2(BWe(1:215,1:263));

meanGrayLevelBWf = mean2(BWf(1:311,1:51));

meanGrayLevelBWg = mean2(BWg(1:61,1:226));


