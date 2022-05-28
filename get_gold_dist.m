%% Function for importing and Processing of the gold distances matrices
function [gold_distances] = get_gold_dist (mat)
    
    % Cell of the different gold distances at each cycle
    n = 1;
    m = 1;
    mat =  mat (find (mat~=10000));
    for i = 1 : size(mat)
    
        if  all(mat(i) == 20000)

            gold_distances{1,n} =  gold_dist;
            n = n + 1;
            m = 1;
            gold_dist = 0;

        else 
            gold_dist(1,m) = mat(i);
            m = m + 1;

        end 
    end 
end