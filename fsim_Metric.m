% https://github.com/sunxirui310/FSIM-FSIMc-matlab/blob/master/FSIM.m

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

[FSIM1F, FSIMc1F] = FSIM(refF, Flowers1);
[FSIM4F, FSIMc4F] = FSIM(refF, Flowers4);
[FSIM6F, FSIMc6F] = FSIM(refF, Flowers6);
[FSIM9F, FSIMc9F] = FSIM(refF, Flowers9);
[FSIM12F, FSIMc12F] = FSIM(refF, Flowers12);
[FSIM18F, FSIMc18F] = FSIM(refF, Flowers18);

[FSIM1H, FSIMc1H] = FSIM(refH, Hokkaido1);
[FSIM4H, FSIMc4H] = FSIM(refH, Hokkaido4);
[FSIM6H, FSIMc6H] = FSIM(refH, Hokkaido6);
[FSIM8H, FSIMc8H] = FSIM(refH, Hokkaido8);
[FSIM10H, FSIMc10H] = FSIM(refH, Hokkaido10);
[FSIM14H, FSIMc14H] = FSIM(refH, Hokkaido14);

X = [0.3, 0.4, 0.5, 0.6, 0.7, 0.9];

FSIMF = [FSIM1F, FSIM4F, FSIM6F, FSIM9F, FSIM12F,FSIM18F];
FSIMH = [FSIM1H, FSIM4H, FSIM6H, FSIM8H, FSIM10H,FSIM14H];

FSIMcF = [FSIMc1F, FSIMc4F, FSIMc6F, FSIMc9F, FSIMc12F,FSIMc18F];
FSIMcH = [FSIMc1H, FSIMc4H, FSIMc6H, FSIMc8H, FSIMc10H,FSIMc14H];

figure(1)
plot(X,FSIMF,'b-+')
hold on
plot(X,FSIMH,'r-+')
legend({'Flowers', '02Hokkaido'},'Location','southeast')
xlabel('BPP')
ylabel('FSIM[-]')


figure(2)
plot(X,FSIMcF,'b-+')
hold on
plot(X,FSIMcH,'r-+')
legend({'Flowers', '02Hokkaido'},'Location','southeast')
xlabel('BPP')
ylabel('FSIMc[-]')
