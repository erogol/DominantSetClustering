function [] = plot_data(data,labels)
figure(10);
gscatter(data(:,1),data(:,2),labels,[],'ox+*sdv^<>ph.')
