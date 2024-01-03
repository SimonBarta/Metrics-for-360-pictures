[num, txt, Raw] = xlsread('VMAF.xlsx',1,'B5:G6');
X = [0.3, 0.4, 0.5, 0.6, 0.7, 0.9];

% VMAFF = [Raw(1,:)];
% VMAFH = [Raw(2,:)];

VMAFF = [15.866650,51.372205,63.733492,71.407564,76.646348,82.684432];
VMAFH = [18.153173,55.437150,66.978987,76.907260,82.508064,88.067509];


figure(1)
plot(X,VMAFF,'b-+')
hold on
plot(X,VMAFH,'r-+')
legend({'Flowers', '02Hokkaido'},'Location','southeast')
xlabel('BPP')
ylabel('VMAF[-]')