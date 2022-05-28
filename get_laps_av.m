function[matrix] = get_laps_av(cel)
    [m, n] = size(cel);
    matrix=zeros(m,n);

    for i = 1:m
        for j = 1:n  
            matrix(i,j) = mean(cel{i,j});
        end
    end

end 