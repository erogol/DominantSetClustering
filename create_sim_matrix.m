function[S] = create_sim_matrix(DATA)
S = pdist2(DATA(:,1:2),DATA(:,1:2),'seuclidean');
sigma2 = median(S(:));
S = exp(-S/sigma2);