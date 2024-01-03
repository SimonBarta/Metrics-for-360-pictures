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

VSI1F = iwssim(refF,Flowers1);
VSI4F = iwssim(refF, Flowers4);
VSI6F = iwssim(refF, Flowers6);
VSI9F = iwssim(refF, Flowers9);
VSI12F = iwssim(refF, Flowers12);
VSI18F = iwssim(refF, Flowers18);