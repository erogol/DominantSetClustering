DominantSetClustering
=====================

This is a  MATLAB implementation of 'Dominant Sets and Pairwise Clustering', by Massimiliano     Pavan and Marcello Pelillo, PAMI 2007.

For example run refer perform_clustering.m

<pre>
% clusterDS example run

config();
read_all_data();

DATA = DATA1;
S = create_sim_matrix(DATA);

[clusters charVectors prototypeIndices payoffs nCluster] = clusterDS(S, 'MaxClust', 3);
plot_data(DATA(:,1:2), clusters);
</pre>
