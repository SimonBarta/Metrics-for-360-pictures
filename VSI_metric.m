refF = imread('D:\FEKT\SEP\Flowers\ref_Flowers.bmp');
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

VSI1F = VSI(refF, Flowers1);
VSI4F = VSI(refF, Flowers4);
VSI6F = VSI(refF, Flowers6);
VSI9F = VSI(refF, Flowers9);
VSI12F = VSI(refF, Flowers12);
VSI18F = VSI(refF, Flowers18);

VSI1H = VSI(refH, Hokkaido1);
VSI4H = VSI(refH, Hokkaido4);
VSI6H = VSI(refH, Hokkaido6);
VSI8H = VSI(refH, Hokkaido8);
VSI10H = VSI(refH, Hokkaido10);
VSI14H = VSI(refH, Hokkaido14);

X = [0.3, 0.4, 0.5, 0.6, 0.7, 0.9];

VSIF = [VSI1F, VSI4F, VSI6F, VSI9F, VSI12F,VSI18F];
VSIH = [VSI1H, VSI4H, VSI6H, VSI8H, VSI10H,VSI14H];

figure(1)
plot(X,VSIF,'b-+')
hold on
plot(X,VSIH,'r-+')
set(gca,'FontSize',20, 'FontName', 'Courier')
% legend({'Flowers', '02Hokkaido'},'Location','southeast')
xlabel('BPP')
ylabel('VSI[-]')
