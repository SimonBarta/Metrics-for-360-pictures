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

Vif1F = vif(refF, Flowers1);
Vif4F = vif(refF, Flowers4);
Vif6F = vif(refF, Flowers6);
Vif9F = vif(refF, Flowers9);
Vif12F = vif(refF, Flowers12);
Vif18F = vif(refF, Flowers18);

Vif1H = vif(refH, Hokkaido1);
Vif4H = vif(refH, Hokkaido4);
Vif6H = vif(refH, Hokkaido6);
Vif8H = vif(refH, Hokkaido8);
Vif10H = vif(refH, Hokkaido10);
Vif14H = vif(refH, Hokkaido14);

X = [0.3, 0.4, 0.5, 0.6, 0.7, 0.9];

VifF = [Vif1F(:,2), Vif4F(:,2), Vif6F(:,2), Vif9F(:,2), Vif12F(:,2),Vif18F(:,2)];
VifH = [Vif1H(:,2), Vif4H(:,2), Vif6H(:,2), Vif8H(:,2), Vif10H(:,2),Vif14H(:,2)];

figure(1)
plot(X,VifF,'b-+')
hold on
plot(X,VifH,'r-+')
set(gca,'FontSize',20, 'FontName', 'Courier')
% legend({'Flowers', '02Hokkaido'},'Location','southeast')
xlabel('BPP')
ylabel('VIF[-]')