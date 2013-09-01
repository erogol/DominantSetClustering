function[S] = create_sim_matrix(DATA)
S = pdist2(DATA(:,1:end),DATA(:,1:end),'seuclidean');
sigma2 = median(S(:));
S = exp(-S/sigma2);
