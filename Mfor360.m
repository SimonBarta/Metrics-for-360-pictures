
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
MSssimval1A = mean(MSssimval1A);
[MSssimval4A,~] = multissim(Atacama4,refA);
MSssimval4A = mean(MSssimval4A);
[MSssimval5A,~] = multissim(Atacama5,refA);
MSssimval5A = mean(MSssimval5A);
[MSssimval7A,~] = multissim(Atacama7,refA);
MSssimval7A = mean(MSssimval7A);
[MSssimval9A,~] = multissim(Atacama9,refA);
MSssimval9A = mean(MSssimval9A);
[MSssimval13A,~] = multissim(Atacama13,refA);
MSssimval13A = mean(MSssimval13A);

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

%calculating niqe
NIQE1A = niqe(Atacama1);
NIQE4A = niqe(Atacama1);
NIQE5A = niqe(Atacama1);
NIQE7A = niqe(Atacama1);
NIQE9A = niqe(Atacama1);
NIQE13A = niqe(Atacama1);

NIQE1F = niqe(Flowers1);
NIQE4F = niqe(Flowers4);
NIQE6F = niqe(Flowers6);
NIQE9F = niqe(Flowers9);
NIQE12F = niqe(Flowers12);
NIQE18F = niqe(Flowers18);

%calculating brisque
BRISQUE1A = brisque(Atacama1);
BRISQUE4A = brisque(Atacama1);
BRISQUE5A = brisque(Atacama1);
BRISQUE7A = brisque(Atacama1);
BRISQUE9A = brisque(Atacama1);
BRISQUE13A = brisque(Atacama1);

BRISQUE1F = brisque(Flowers1);
BRISQUE4F = brisque(Flowers4);
BRISQUE6F = brisque(Flowers6);
BRISQUE9F = brisque(Flowers9);
BRISQUE12F = brisque(Flowers12);
BRISQUE18F = brisque(Flowers18);

%calculating piqe
PIQE1A = piqe(Atacama1);
PIQE4A = piqe(Atacama1);
PIQE5A = piqe(Atacama1);
PIQE7A = piqe(Atacama1);
PIQE9A = piqe(Atacama1);
PIQE13A = piqe(Atacama1);

PIQE1F = piqe(Flowers1);
PIQE4F = piqe(Flowers4);
PIQE6F = piqe(Flowers6);
PIQE9F = piqe(Flowers9);
PIQE12F = piqe(Flowers12);
PIQE18F = piqe(Flowers18);


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

NA = [NIQE1A, NIQE4A, NIQE5A, NIQE7A, NIQE9A, NIQE13A ];
NF = [NIQE1F, NIQE4F, NIQE6F, NIQE9F, NIQE12F, NIQE18F];

BRIA = [BRISQUE1A, BRISQUE4A, BRISQUE5A, BRISQUE7A, BRISQUE9A, BRISQUE13A ];
BRIF = [BRISQUE1F, BRISQUE4F, BRISQUE6F, BRISQUE9F, BRISQUE12F, BRISQUE18F];

PIQA = [PIQE1A, PIQE4A, PIQE5A, PIQE7A, PIQE9A, PIQE13A ];
PIQF = [PIQE1F, PIQE4F, PIQE6F, PIQE9F, PIQE12F, PIQE18F];


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
ylabel('MS-SSIM[dB]')

subplot(2,3,4);
plot(X,NA,'-+')
hold on
plot(X,NF,'-+')
hold off
xlabel('BPP')
ylabel('Niqe[dB]')

subplot(2,3,5);
plot(X,BRIA,'-+')
hold on
plot(X,BRIF,'-+')
hold off
xlabel('BPP')
ylabel('Brique[dB]')

subplot(2,3,6);
plot(X,PIQA,'-+')
hold on
plot(X,PIQF,'-+')
hold off
xlabel('BPP')
ylabel('Piqe[dB]')


