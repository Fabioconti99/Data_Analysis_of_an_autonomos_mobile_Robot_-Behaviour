function [lap_time_average, lap_time_std] = total_lap_time_average(ex_cell, my_cell)

[~, n] = size(ex_cell);

for i = 1:n

    lap_time_average(i,:) = [ex_cell{1,i}(1,:), my_cell{1,i}(1,:)];
    lap_time_std(i,:) = [ex_cell{1,i}(1,:), my_cell{1,i}(1,:)];
end

lap_time_average = mean (lap_time_average');
lap_time_std = std (lap_time_std');

end 