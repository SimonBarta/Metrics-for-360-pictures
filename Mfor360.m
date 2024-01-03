
%%reading files downloaded from https://zenodo.org/records/7607071

clear all 
refF = imread('D:\FEKT\SEP\Flowers\ref_Flowers.bmp');%loading ref image
Flowers1 = imread('D:\FEKT\SEP\Flowers\Flowers1JPG.bmp');
Flowers4 = imread('D:\FEKT\SEP\Flowers\Flowers4JPG.bmp');
Flowers6 = imread('D:\FEKT\SEP\Flowers\Flowers6JPG.bmp');
Flowers9 = imread('D:\FEKT\SEP\Flowers\Flowers9JPG.bmp');
Flowers12 = imread('D:\FEKT\SEP\Flowers\Flowers12JPG.bmp');
Flowers18 = imread('D:\FEKT\SEP\Flowers\Flowers18JPG.bmp');

refH = imread('D:\FEKT\SEP\02Hokkaido\ref_02_Hokkaido.bmp');
Hokkaido1 = imread('D:\FEKT\SEP\02Hokkaido\02_Hokkaido1JPG.bmp');
Hokkaido4 = imread('D:\FEKT\SEP\02Hokkaido\02_Hokkaido4JPG.bmp');
Hokkaido6 = imread('D:\FEKT\SEP\02Hokkaido\02_Hokkaido6JPG.bmp');
Hokkaido8 = imread('D:\FEKT\SEP\02Hokkaido\02_Hokkaido8JPG.bmp');
Hokkaido10 = imread('D:\FEKT\SEP\02Hokkaido\02_Hokkaido10JPG.bmp');
Hokkaido14 = imread('D:\FEKT\SEP\02Hokkaido\02_Hokkaido14JPG.bmp');

%%calculating peak-signal-to-noise-ration
[peaksnr1F, ~] = psnr(Flowers1, refF);
[peaksnr4F, ~] = psnr(Flowers4, refF);
[peaksnr6F, ~] = psnr(Flowers6, refF);
[peaksnr9F, ~] = psnr(Flowers9, refF);
[peaksnr12F, ~] = psnr(Flowers12, refF);
[peaksnr18F, ~] = psnr(Flowers18, refF);

[peaksnr1H, ~] = psnr(Hokkaido1, refH);
[peaksnr4H, ~] = psnr(Hokkaido4, refH);
[peaksnr6H, ~] = psnr(Hokkaido6, refH);
[peaksnr8H, ~] = psnr(Hokkaido8, refH);
[peaksnr10H, ~] = psnr(Hokkaido10, refH);
[peaksnr14H, ~] = psnr(Hokkaido14, refH);

%calculating SSIM


[ssimval1F,~] = ssim(Flowers1,refF);
[ssimval4F,~] = ssim(Flowers4,refF);
[ssimval6F,~] = ssim(Flowers6,refF);
[ssimval9F,~] = ssim(Flowers9,refF);
[ssimval12F,~] = ssim(Flowers12,refF);
[ssimval18F,~] = ssim(Flowers18,refF);

[ssimval1H,~] = ssim(Hokkaido1, refH);
[ssimval4H,~] = ssim(Hokkaido4, refH);
[ssimval6H,~] = ssim(Hokkaido6, refH);
[ssimval8H,~] = ssim(Hokkaido8, refH);
[ssimval10H,~] = ssim(Hokkaido10, refH);
[ssimval14H,~] = ssim(Hokkaido14, refH);

%calculating MS-SSIM


[MSssimval1F,~] = multissim(Flowers1,refF);
MSssimval1F = mean(MSssimval1F);
[MSssimval4F,~] = multissim(Flowers4,refF);
MSssimval4F = mean(MSssimval4F);
[MSssimval6F,~] = multissim(Flowers6,refF);
MSssimval6F = mean(MSssimval6F);
[MSssimval9F,~] = multissim(Flowers9,refF);
MSssimval9F = mean(MSssimval9F);
[MSssimval12F,~] = multissim(Flowers12,refF);
MSssimval12F = mean(MSssimval12F);
[MSssimval18F,~] = multissim(Flowers18,refF);
MSssimval18F = mean(MSssimval18F);

[MSssimval1H,~] = multissim(Hokkaido1, refH);
MSssimval1H = mean(MSssimval1H);
[MSssimval4H,~] = multissim(Hokkaido4, refH);
MSssimval4H = mean(MSssimval4H);
[MSssimval6H,~] = multissim(Hokkaido6, refH);
MSssimval6H = mean(MSssimval6H);
[MSssimval8H,~] = multissim(Hokkaido8, refH);
MSssimval8H = mean(MSssimval8H);
[MSssimval10H,~] = multissim(Hokkaido10, refH);
MSssimval10H = mean(MSssimval10H);
[MSssimval14H,~] = multissim(Hokkaido14, refH);
MSssimval14H = mean(MSssimval14H);

%calculating niqe


NIQE1F = niqe(Flowers1);
NIQE4F = niqe(Flowers4);
NIQE6F = niqe(Flowers6);
NIQE9F = niqe(Flowers9);
NIQE12F = niqe(Flowers12);
NIQE18F = niqe(Flowers18);

NIQE1H = niqe(Hokkaido1);
NIQE4H = niqe(Hokkaido4);
NIQE6H = niqe(Hokkaido6);
NIQE8H = niqe(Hokkaido8);
NIQE10H = niqe(Hokkaido10);
NIQE14H = niqe(Hokkaido14);

%calculating brisque


BRISQUE1F = brisque(Flowers1);
BRISQUE4F = brisque(Flowers4);
BRISQUE6F = brisque(Flowers6);
BRISQUE9F = brisque(Flowers9);
BRISQUE12F = brisque(Flowers12);
BRISQUE18F = brisque(Flowers18);

BRISQUE1H = niqe(Hokkaido1);
BRISQUE4H = niqe(Hokkaido4);
BRISQUE6H = niqe(Hokkaido6);
BRISQUE8H = niqe(Hokkaido8);
BRISQUE10H = niqe(Hokkaido10);
BRISQUE14H = niqe(Hokkaido14);

%calculating piqe


PIQE1F = piqe(Flowers1);
PIQE4F = piqe(Flowers4);
PIQE6F = piqe(Flowers6);
PIQE9F = piqe(Flowers9);
PIQE12F = piqe(Flowers12);
PIQE18F = piqe(Flowers18);

PIQE1H = niqe(Hokkaido1);
PIQE4H = niqe(Hokkaido4);
PIQE6H = niqe(Hokkaido6);
PIQE8H = niqe(Hokkaido8);
PIQE10H = niqe(Hokkaido10);
PIQE14H = niqe(Hokkaido14);


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

PF= [peaksnr1F, peaksnr4F, peaksnr6F, peaksnr9F, peaksnr12F, peaksnr18F ];
PH= [peaksnr1H, peaksnr4H, peaksnr6H, peaksnr8H, peaksnr10H, peaksnr14H ];


SF = [ssimval1F, ssimval4F, ssimval6F, ssimval9F, ssimval12F, ssimval18F ];
SH = [ssimval1H, ssimval4H, ssimval6H, ssimval8H, ssimval10H, ssimval14H ];


MSF = [MSssimval1F, MSssimval4F, MSssimval6F, MSssimval9F, MSssimval12F, MSssimval18F ];
MSH = [MSssimval1H, MSssimval4H, MSssimval6H, MSssimval8H, MSssimval10H, MSssimval14H ];


NF = [NIQE1F, NIQE4F, NIQE6F, NIQE9F, NIQE12F, NIQE18F];
NH = [NIQE1H, NIQE4H, NIQE6H, NIQE8H, NIQE10H, NIQE14H];


BRIF = [BRISQUE1F, BRISQUE4F, BRISQUE6F, BRISQUE9F, BRISQUE12F, BRISQUE18F];
BRIH = [BRISQUE1H, BRISQUE4H, BRISQUE6H, BRISQUE8H, BRISQUE10H, BRISQUE14H];


PIQF = [PIQE1F, PIQE4F, PIQE6F, PIQE9F, PIQE12F, PIQE18F];
PIQH = [PIQE1H, PIQE4H, PIQE6H, PIQE8H, PIQE10H, PIQE14H];


figure(1)
plot(X,PF,'r-+')
hold on
plot(X,PH,'b-+')
legend({'Flowers', '02Hokkaido'},'Location','southeast')
xlabel('BPP')
ylabel('PSNR[dB]')


figure(2)
plot(X,SF,'r-+')
hold on
plot(X,SH,'b-+')
legend({'Flowers', '02Hokkaido'},'Location','southeast')
xlabel('BPP')
ylabel('SSIM[-]')

figure(3)
plot(X,MSF,'r-+')
hold on
plot(X,MSH,'b-+')
legend({'Flowers', '02Hokkaido'},'Location','southeast')
xlabel('BPP')
ylabel('MS-SSIM[-]')

figure(4)
plot(X,NF,'r-+')
hold on
plot(X,NH,'b-+')
legend({'Flowers', '02Hokkaido'},'Location','southeast')
xlabel('BPP')
ylabel('Niqe[-]')

figure(5)
plot(X,BRIF,'r-+')
hold on
plot(X,BRIH,'b-+')
legend({'Flowers', '02Hokkaido'},'Location','east')
xlabel('BPP')
ylabel('Brique[-]')

figure(6)
plot(X,PIQF,'r-+')
hold on
plot(X,PIQH,'b-+')
legend({'Flowers', '02Hokkaido'},'Location','east')
xlabel('BPP')
ylabel('Piqe[-]')


