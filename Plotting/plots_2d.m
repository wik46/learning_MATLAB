% Author: Wikus Jansen van Rensburg
% Last modified: March 7, 2021

% Part 1: 2d Plots.
% Idea of generating plots.
% A plot is a discrete computational device.

% We use this to clear the console window.
clear
clc
close all

% Example 1:
% Now we have all the points that we want to plot.
x = linspace(0, 4, 10); % x is a vector from 0 to 4 that has 10 entries.
x1 = linspace(0,4,100); % x1 is a vector with a lot more datapoints.
y = x.^2.*sin(x);    % Notice that . operator use when working with elements of a vectors.
y1 = x1.^2.*cos(x1); % We plot a more precise line with more data points.
y2 = 0.*x1;             % Used to draw the x-axis.
% Use help('plot') tp see how to customize your plot.
figure  % Starts a new figure for us. This must be on top before we add labels.

% This is if you want to plot an extra plot.
% You need to tell matlab to hold on. This allows multiple plots to be
% drawn on the same axis.
hold on

% Plot 1
plot(x, y, 'r-') % Now we tell Matlab to plot all our datapoints and connect dots.
plot(x1, y1, 'b-') % This uses a lot more datapoints.
plot(x1, y2, 'k')

% Custom formating.
% We label our axis.
title('Example 1: Notice the different datapoints.')
xlabel('x-axis (seconds)')
ylabel('y = x^2')
grid on             % Turn on the grid lines.

text(0.2, -10, 'I inserted this text by specifying the co-ordinates', 'FontSize',5)