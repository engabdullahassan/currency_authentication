clear; close all; clc;
a = imread("U:\DIP\Project\noteUV.png");
subplot(4,4,1);
imshow(a);

b = rgb2gray(a);
subplot(4,4,2);
imshow (b);

%identification marks
c = b(50:120,10:35,:);
subplot(4,4,3);
imshow(c);

%serial number
d = b(220:260,390:580,:);
subplot(4,4,4);
imshow(d);

%watermark
e = b(80:210,200:320,:);
subplot(4,4,5);
imshow(e);

%security thread
f = b(45:255,335:352,:);
subplot(4,4,6);
imshow(f);

%latency image
g = b(210:250,45:150,:);
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

meanGrayLevelBWc = mean2(BWc(1:71,1:26));

meanGrayLevelBWh = mean2(BWh(1:41,1:191));

meanGrayLevelBWe = mean2(BWe(1:131,1:121));

meanGrayLevelBWf = mean2(BWf(1:211,1:18));

meanGrayLevelBWg = mean2(BWg(1:41,1:106));


