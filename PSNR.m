
%%reading files downloaded from https://zenodo.org/records/7607071

clear all
refA = imread('D:\FEKT\SEP\Atacama\ref_Atacama.bmp'); %loading ref image
Atacama1 = imread('D:\FEKT\SEP\Atacama\Atacama1JPG.bmp');
Atacama4 = imread('D:\FEKT\SEP\Atacama\Atacama4JPG.bmp');
Atacama5 = imread('D:\FEKT\SEP\Atacama\Atacama5JPG.bmp');
Atacama7 = imread('D:\FEKT\SEP\Atacama\Atacama7JPG.bmp');
Atacama9 = imread('D:\FEKT\SEP\Atacama\Atacama9JPG.bmp');
Atacama13 = imread('D:\FEKT\SEP\Atacama\Atacama13JPG.bmp');

refF = imread('D:\FEKT\SEP\Flowers\ref_Flowers.bmp');
Flowers1 = imread('D:\FEKT\SEP\Flowers\Flowers1JPG.bmp');
Flowers4 = imread('D:\FEKT\SEP\Flowers\Flowers4JPG.bmp');
Flowers6 = imread('D:\FEKT\SEP\Flowers\Flowers6JPG.bmp');
Flowers9 = imread('D:\FEKT\SEP\Flowers\Flowers9JPG.bmp');
Flowers12 = imread('D:\FEKT\SEP\Flowers\Flowers12JPG.bmp');
Flowers18 = imread('D:\FEKT\SEP\Flowers\Flowers18JPG.bmp');

%%calculating peak-signal-to-noise-ration
[peaksnr1A, ~] = psnr(Atacama1, refA);
[peaksnr4A, ~] = psnr(Atacama4, refA);
[peaksnr5A, ~] = psnr(Atacama5, refA);
[peaksnr7A, ~] = psnr(Atacama7, refA);
[peaksnr9A, ~] = psnr(Atacama9, refA);
[peaksnr13A, ~] = psnr(Atacama13, refA); 

[peaksnr1F, ~] = psnr(Flowers1, refF);
[peaksnr4F, ~] = psnr(Flowers4, refF);
[peaksnr6F, ~] = psnr(Flowers6, refF);
[peaksnr9F, ~] = psnr(Flowers9, refF);
[peaksnr12F, ~] = psnr(Flowers12, refF);
[peaksnr18F, ~] = psnr(Flowers18, refF);

%calculating SSIM
[ssimval1A,~] = ssim(Atacama1,refA);
[ssimval4A,~] = ssim(Atacama4,refA);
[ssimval5A,~] = ssim(Atacama5,refA);
[ssimval7A,~] = ssim(Atacama7,refA);
[ssimval9A,~] = ssim(Atacama9,refA);
[ssimval13A,~] = ssim(Atacama13,refA);

[ssimval1F,~] = ssim(Flowers1,refF);
[ssimval4F,~] = ssim(Flowers4,refF);
[ssimval6F,~] = ssim(Flowers6,refF);
[ssimval9F,~] = ssim(Flowers9,refF);
[ssimval12F,~] = ssim(Flowers12,refF);
[ssimval18F,~] = ssim(Flowers18,refF);

%calculating MS-SSIM
[MSssimval1A,~] = multissim(Atacama1,refA);
MSssimval1A = single(MSssimval1A);
[MSssimval4A,~] = multissim(Atacama4,refA);
MSssimval4A = single(MSssimval4A);
[MSssimval5A,~] = multissim(Atacama5,refA);
MSssimval5A = single(MSssimval5A);
[MSssimval7A,~] = multissim(Atacama7,refA);
MSssimval7A = single(MSssimval7A);
[MSssimval9A,~] = multissim(Atacama9,refA);
MSssimval9A = single(MSssimval9A);
[MSssimval13A,~] = multissim(Atacama13,refA);
MSssimval13A = single(MSssimval13A);

[MSssimval1F,~] = multissim(Flowers1,refF);
MSssimval1F = single(MSssimval1F);
[MSssimval4F,~] = multissim(Flowers4,refF);
MSssimval4F = single(MSssimval4F);
[MSssimval6F,~] = multissim(Flowers6,refF);
MSssimval6F = single(MSssimval6F);
[MSssimval9F,~] = multissim(Flowers9,refF);
MSssimval9F = single(MSssimval9F);
[MSssimval12F,~] = multissim(Flowers12,refF);
MSssimval12F = single(MSssimval12F);
[MSssimval18F,~] = multissim(Flowers18,refF);
MSssimval18F = single(MSssimval18F)


%%values for X
% Considering the potential usefulness of our database for
% further research purposes, the encoder settings were adjusted
% to get distorted images in data streams from the lowest bits per
% pixel (bpp) values up to 1 bpp. Specifically, the database offers
% images in a range of 0.1, 0.2, 0.3, 0.5, 0.7, 0.9 bpp (AVIF,
% HEIC, and JPEG XL), and 0.3, 0.4, 0.5, 0.6, 0.7, 0.9 bpp
% (JPEG). Each reference image was compressed at six different
% quantization parameter (QP) settings.
%----------------------
%source: M. Simka, L. Polak, J. Kufa, M. Novotny, A. Zizien and K. Fliegel, "Omnidirectional Image Quality Assessment Database (OMNIQAD): Description and Examples," 2023 33rd International Conference Radioelektronika (RADIOELEKTRONIKA), Pardubice, Czech Republic, 2023, pp. 1-5, doi: 10.1109/RADIOELEKTRONIKA57919.2023.10109005.


X = [0.3, 0.4, 0.5, 0.6, 0.7, 0.9];
PA= [peaksnr1A, peaksnr4A, peaksnr5A, peaksnr7A, peaksnr9A, peaksnr13A ];
PF= [peaksnr1F, peaksnr4F, peaksnr6F, peaksnr9F, peaksnr12F, peaksnr18F ];

SA = [ssimval1A, ssimval4A, ssimval5A, ssimval7A,ssimval9A, ssimval13A ];
SF = [ssimval1F, ssimval4F, ssimval6F, ssimval9F, ssimval12F, ssimval18F ];

MSA = [MSssimval1A, MSssimval4A, MSssimval5A, MSssimval7A, MSssimval9A, MSssimval13A ];
MSF = [MSssimval1F, MSssimval4F, MSssimval6F, MSssimval9F, MSssimval12F, MSssimval18F ];


figure(1)
subplot(2,3,1);
plot(X,PA,'-+')
hold on
plot(X,PF,'-+')
hold off
xlabel('BPP')
ylabel('PSNR[dB]')


subplot(2,3,2);
plot(X,SA,'-+')
hold on
plot(X,SF,'-+')
hold off
xlabel('BPP')
ylabel('SSIM[dB]')


subplot(2,3,3);
plot(X,MSA,'-+')
hold on
plot(X,MSF,'-+')
hold off
xlabel('BPP')
ylabel('SSIM[dB]')


