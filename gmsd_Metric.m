% https://www4.comp.polyu.edu.hk/~cslzhang/IQA/GMSD/GMSD.htm

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

GMSD1F = GMSD(refF, Flowers1);
GMSD4F = GMSD(refF, Flowers4);
GMSD6F = GMSD(refF, Flowers6);
GMSD9F = GMSD(refF, Flowers9);
GMSD12F = GMSD(refF, Flowers12);
GMSD18F = GMSD(refF, Flowers18);

GMSD1H = GMSD(refH, Hokkaido1);
GMSD4H = GMSD(refH, Hokkaido4);
GMSD6H = GMSD(refH, Hokkaido6);
GMSD8H = GMSD(refH, Hokkaido8);
GMSD10H = GMSD(refH, Hokkaido10);
GMSD14H = GMSD(refH, Hokkaido14);

X = [0.3, 0.4, 0.5, 0.6, 0.7, 0.9];

FSIMF = [GMSD1F, GMSD4F, GMSD6F, GMSD9F, GMSD12F,GMSD18F];
FSIMH = [GMSD1H, GMSD4H, GMSD6H, GMSD8H, GMSD10H,GMSD14H];



figure(1)
plot(X,GDSMF,'b-+')
hold on
plot(X,GDSMH,'r-+')
hold off
xlabel('BPP')
ylabel('FSIM[dB]')

