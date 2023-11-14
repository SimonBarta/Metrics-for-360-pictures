clear all
ref = imread('Barvy.jpg'); %loading ref image
jp2 = imread('Barvy.jp2'); %loading comprimaied image
png = imread("Barvy.png"); %loading comprimaied image
heic = imread('Barvy.heic'); %loading comprimaied imege
heic = permute(heic, [2 1 3]); %making same dimension of loaded image as ref image have
