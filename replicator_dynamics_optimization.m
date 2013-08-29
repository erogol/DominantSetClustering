function [x] = replicator_dynamics_optimization(x,currentA,iter_thresh, epsilon)
% function [x] = replicator_dynamics_optimization(x,currentA,iter_thresh, epsilon)
% x             - chacterization matrix
% currentA      - affinity matrix
% iter_thresh   - maximum number of iteration
% epsilon       - objective change threshold for ending optimization
%
% written by Eren Golge erengolge@gmail.com

distance = 2*epsilon;
old_distance = 0;
iter_no = 1;
while(abs(old_distance - distance) > epsilon && iter_no < iter_thresh)
    fprintf(['Distance:',num2str(distance), '\t-- Iter:',num2str(iter_no) ,'\n'])
    old_distance = distance;
    old_x = x;
    x = x.*(currentA*x);
    x = x./sum(x);
    x(isnan(x)) = 0;
    distance = norm(x-old_x);
    iter_no = iter_no +1;
end
