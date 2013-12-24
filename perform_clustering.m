% clusterDS example run

config();
read_all_data();

DATA = DATA1;
S = create_sim_matrix(DATA);

% Keep in mind that 'MaxClust' is the number of dominant set will be extracted
% Hence if 'MaxClust' is 1 you will have 2 clusters with the residual data
[clusters charVectors prototypeIndices payoffs nCluster] = clusterDS(S, 'MaxClust', 1);
plot_data(DATA(:,1:2), clusters);
