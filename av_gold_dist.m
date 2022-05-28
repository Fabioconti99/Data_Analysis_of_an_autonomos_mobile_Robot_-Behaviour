%% Function for calculating thee total and partial average gold token 
% disatancese 
function [av_dist, total_average, std_gd] = av_gold_dist(cel,mat)
    
    [~,c] = size(cel);
    for i = 1:c

        av_dist(1,i) = mean(cel{1,i});
        
    end 

    av_dist=av_dist';
    mat = mat(find (mat~=20000));
    mat = mat(find (mat~=10000));
    total_average = mean(mat);
    std_gd = std(mat);

end
