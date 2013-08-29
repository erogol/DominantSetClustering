config;

figure
subplot(2,2,1)
DATA1 = csvread('TOY_DATA/noisy_circle.data');
gscatter(DATA1(:,1),DATA1(:,2), DATA1(:,3),[],'ox+*sdv^<>ph.')

subplot(2,2,2)
DATA2 = csvread('TOY_DATA/noisy_moons.data');
gscatter(DATA2(:,1),DATA2(:,2), DATA2(:,3),[],'ox+*sdv^<>ph.')

subplot(2,2,3)
DATA3 = csvread('TOY_DATA/no_structure.data');
gscatter(DATA3(:,1),DATA3(:,2),[],[],'ox+*sdv^<>ph.')

subplot(2,2,4)
DATA4 = csvread('TOY_DATA/blobs.data');
gscatter(DATA4(:,1),DATA4(:,2), DATA4(:,3),[],'ox+*sdv^<>ph.')