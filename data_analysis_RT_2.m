clear
clc

%% Data analysis of the Student Robotics' holonomic robot simulation

%% Import and Processing of the gold distances matrix

% Gold Dist Matrix example

load('ex_gold_dist.mat')
ex_gold_dist_cell = get_gold_dist(ex_gold_dist);

% Gold Dist Matrix

load('my_gold_dist.mat')
my_gold_dist_cell = get_gold_dist(my_gold_dist);

%% Compute the averege distance between robot and gold tokens at every run

% Gold Dist example

[ex_av_gold_dist, tot_av_ex_gl, ex_std_gl] = ...
    av_gold_dist(ex_gold_dist_cell, ex_gold_dist);

% My Gold Dist 

[my_av_gold_dist, tot_av_my_gl, my_std_gl] = ...
    av_gold_dist(my_gold_dist_cell,my_gold_dist);

%% Plot of the Average distance of each run and the average over the whole 
% experiment

figure

filler = zeros(size(ex_av_gold_dist));
filler(end + 1) = tot_av_ex_gl;

bar(ex_av_gold_dist)
hold on

bar(filler)

legend('single run average','Total average')
title('Average distance from GOLD tokens')
xlabel('Run')
ylabel('Average Distance')