

I = imread('D:\FEKT\SEP\Atacama\ref_Atacama.bmp');

psnrValues = zeros(1,10);
qualityFactor = 10:10:100;
for i = 1:10

    imwrite(I,'D:\FEKT\SEP\Atacama\Atacama1JPG.bmp','jpg','quality',qualityFactor(i));
    
    psnrValues(i) = psnr(imread('D:\FEKT\SEP\Atacama\Atacama1JPG.bmp'),I);
end


plot(qualityFactor,psnrValues,'b-o');

xlabel('Compression Quality Factor');
ylabel('psnr Value');