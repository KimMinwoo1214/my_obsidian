% Clear workspace, command window, and close all figures
clear; close all; clc;

[X,Y]=ndgrid(-6:1:6);

% Define shear matrix
A = [2,1;1,2];

n_steps = 20;
figure;
set(gcf,'color','w');
set(gca, 'nextplot','replacechildren');

% Simulate the lineaer transform of shear matrix
for i_steps = 0:n_steps
    step_mtx = (A-eye(2))/n_steps*i_steps;
    
    %%%%%%% TODO %%%%%%%
    % Refer to the lecture slide 7
    % Calculate the linear transformed X and Y
    new_xy = ;
    new_XY = reshape(new_xy,[2,size(X,1),size(X,1)]);
    %%%%%%%%%%%%%%%%%%%%

    for i = -3:3
        for j=-4:0
            line([i i],[-j j], 'color','k');
            hold on;
            
            line([-j j],[i i], 'color', 'k');
        end
    end
    plot(squeeze(new_XY(1,:,:)), squeeze(new_XY(2,:,:)), '-','color','r');
    plot(squeeze(new_XY(1,:,:))', squeeze(new_XY(2,:,:))', '-', 'color','r');
    
    axis equal
    xlim([-4,4])
    ylim([-4,4])
    axis off
    
    drawnow;
    if i_steps<n_steps 
        cla
    end
end