% clusterDS example run
config();
read_all_data();
DATA = DATA4;
[S,dist_mat] = create_sim_matrix(DATA);
[clusters charVectors prototypeIndices payoffs nCluster] = clusterDS(S, 'MaxClust', 3);
fprintf('time spend %d\n', end_time)
plot_data(DATA(:,1:2), clusters);
