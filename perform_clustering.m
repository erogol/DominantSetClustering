% clusterDS example run

config();
read_all_data();

DATA = DATA1;
S = create_sim_matrix(DATA);

[clusters charVectors prototypeIndices payoffs nCluster] = clusterDS(S, 'MaxClust', 3);
plot_data(DATA(:,1:2), clusters);