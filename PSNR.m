ref = imread('Barvy.jpg');
avif = aviread('Barvy.avif');
[peaksnr, snr] = psnr(ref,avif);
fprintf('\n The Peak-SNR value is %0.4f', peaksnr)