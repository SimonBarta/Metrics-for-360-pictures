clear all
ref = imread('Barvy.jpg'); %loading ref image
jp2 = imread('Barvy.jp2'); %loading comprimaied image
png = imread("Barvy.png"); %loading comprimaied image
heic = imread('Barvy.heic'); %loading comprimaied imege
heic = permute(heic, [2 1 3]); %making same dimension of loaded image as ref image have

score = multissim(heic,ref);
fprintf('\n The MS-SSIM value of heic is %0.4f', score) %printing our result

score = multissim(jp2,ref);
fprintf('\n The MS-SSIM value of jp2 is %0.4f', score) %printing our result

score = multissim(png,ref);
fprintf('\n The MS-SSIM value of png is %0.4f', score) %printing our result

