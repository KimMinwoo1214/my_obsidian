% Clear workspace, command window, and close all figures
clear; close all; clc;

% Applying jacobian(1) or not(0)
applying_jacobian = 1;

% Density of points
n_points = 90;

n_steps = 100; size = 10;
my_colors = jet(n_points^2); 
r = 2; % radius

% Polar coordinate
[R, THETA] = ndgrid(linspace(0, r, n_points), linspace(0, 2*pi, n_points));

% Nonlinear function using polar coordinate
[newX, newY, changeR, changeTHETA] = my_nonlin_func(R(:), THETA(:), 'polar'); 
figure;
set(gcf, 'Color', 'w');

for i_step = 0:n_steps
    %%%%%%% TODO %%%%%%%
    % Refer to the lecture slide 18
    % Calculate the changing points
    new_R = ;
    new_THETA = ;
    %%%%%%%%%%%%%%%%%%%%

    if applying_jacobian == 0
        scatter(new_R, new_THETA, size, my_colors, 'filled');
    else
        dist = sqrt(abs(new_R.^2 + new_THETA.^2));
        scatter(new_R, new_THETA, dist * size * 2 + 0.01, my_colors, 'filled');
    end

    xlabel('r'); ylabel('\theta');
    if i_step == n_steps
        xlabel('x = r cos\theta'); ylabel('y = r sin\theta');
    end
    
    grid on;
    xlim([-4, 4]);
    ylim([-r * 1.5, 2*pi]); 
    axis square;
    hold off;
    drawnow;
end
