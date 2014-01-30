function [x, iter_no] = replicator_dynamics_optimization(x,A,iter_thresh, epsilon)
% function [x] = replicator_dynamics_optimization(x,currentA,iter_thresh, epsilon)
% x             - chacterization matrix
% currentA      - affinity matrix
% iter_thresh   - maximum number of iteration
% epsilon       - objective change threshold for ending optimization
%
% written by Eren Golge erengolge@gmail.com

A=A-diag(diag(A));
init_obj = x'*A*x;
old_obj = 0;
obj = init_obj;
iter_no = 1;
while( (obj - old_obj)/init_obj > epsilon && iter_no < iter_thresh )
    fprintf(['Objective:',num2str(obj), '\t-- Iter:',num2str(iter_no) ,'\n'])
    old_obj = obj;
    old_x = x;
    %x = x'*A*x;
    x = x.*[(A*x)/(x'*A*x)];
    x = x/sum(x);
    x(isnan(x)) = 0;
    obj = x'*A*x;
    iter_no = iter_no +1;
end
