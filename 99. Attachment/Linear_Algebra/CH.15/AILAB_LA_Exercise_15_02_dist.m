% Clear workspace, command window, and close all figures
clear; close all; clc;

n_steps = 20;
function_num = 'basic'; % 'polar':극좌표계
range = 11;

for i_step = 0:n_steps
    % Original coordinate
    for i = -3:3
        for j=-4:0
            line([i i],[-j j], 'color','k');
            hold on;
            
            line([-j j],[i i], 'color', 'k');
        end
    end

    T = linspace(-range,range,100);
    for i_t = -range:range
        %%%%%%% TODO %%%%%%%
        % Refer to the lecture slide 9
        % Use the given function to calculate the changing VerticalX,Y
        X = i_t*ones(1,100);
        [tempx, tempy, VerticalX, VerticalY] = ;
        newVerticalX = ;
        newVerticalY = ;
       
        % Use the given function to calculate the changing HorizontalX,Y
        Y = i_t*ones(1,100);   
        [tempx2, tempy2, HorizontalX, HorizontalY] = ;
        newHorizontalX = ;
        newHorizontalY = ;
        %%%%%%%%%%%%%%%%%%%%
        
        % Plot
        plot(newVerticalX,newVerticalY,'r');
        plot(newHorizontalX,newHorizontalY,'r');
        hold on;
    end
    
    grid on;
    xlim([-4 4])
    ylim([-4 4])
    hold off;
    drawnow;
    if i_step < n_steps
        cla
    end
end