clear all
ref = imread('Barvy.jpg'); %loading ref image
jp2 = imread('Barvy.jp2'); %loading comprimaied image
png = imread("Barvy.png"); %loading comprimaied image
heic = imread('Barvy.heic'); %loading comprimaied imege
heic = permute(heic, [2 1 3]); %making same dimension of loaded image as ref image have

[peaksnr, snr] = psnr(heic, ref); %calculating peaksnr
fprintf('\n The Peak-SNR value of heic is %0.4f', peaksnr) %printing our result

[peaksnr, snr] = psnr(jp2, ref); %calculating peaksnr
fprintf('\n The Peak-SNR value of jp2 is %0.4f', peaksnr) %printing our result

[peaksnr, snr] = psnr(png, ref); %calculating peaksnr
fprintf('\n The Peak-SNR value of png is %0.4f', peaksnr) %printing our result