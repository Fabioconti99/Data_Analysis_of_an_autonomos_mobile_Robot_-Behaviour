function[column_cel] = get_laps(mat)

    % Cell of the different gold distances at each cycle
    n = 1;
    m = 1;

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

    m = 1;
    k = 1;
    gold_dist = 0;
    column_cel = cell(1,n-1);

    for j = 1 : n-1

        [~,s]=size(gold_distances{1,j});
        k = 1;

        for i = 1:s

            if  gold_distances{1,j}(1,i) == 10000
    
                column_cel{k,j} =  gold_dist;
                m = 1;
                k = k + 1;
                gold_dist = 0;
    
            else 
                gold_dist(m,1) = gold_distances{1,j}(1,i);
                m = m + 1;

            end
        end 
    end
end