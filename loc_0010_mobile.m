clear; clc; close all;
addpath('Classes')  

% -------------------------------------------------------------------------
% 1.- Define target trajetories
% -------------------------------------------------------------------------
target = oval_trayectory();

% -------------------------------------------------------------------------
% 2.- Generate samples of the trayectory:
% -------------------------------------------------------------------------
dt = 1e-1;
target = target.gen_trayectory(dt);

% -------------------------------------------------------------------------
% 3.- It displays the trayectory - Target only
% -------------------------------------------------------------------------
fig = figure('Position',[1921 566 560 420]);
show_target(fig,target,[0 50 0 50]);
