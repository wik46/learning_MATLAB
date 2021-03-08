% Author: Wikus Jansen van Rensburg
% Last Modified: March 8, 2021
% Description: This program is used to practise
% plotting three dimensional surface in Matlab. 
% This was written during my undergraduate studies in the same
% term that I finished multivariable calculus.

clear 
clc
close all

% Review 2d plots.
% All that this does is plot the points (2,3) and (3,5) and connect
% them with a line.
% x = [2 3]; % This is a vector with x component 2, y component 3.
% y = [3 5];
% figure
% plot(x,y)


% =============================================================
% 3D-LINES.
% =============================================================
% Example 1: Now we plot 2 points in space.
% Similarly, in 3d- we can do the same. But now we are in space R3,
% so we specify points with 3-components.
% We define two points (0,-3,1) and (1,2,-1) and draw a line between them.
x0 = [0 1];   % From x = 0, to x = 1
y0 = [-3 2];  % From y = -3, to y = 2
z0 = [1 -1];  % From z = 1, to z = -1.
% We create a seperate figure.
figure
plot3(x0,y0,z0)
hold on             % I want to plot example 2 on this figure as well.
grid on

title('How to plot 3d surfaces: Intro')
xlabel('x-axis')
ylabel('y-axis')
zlabel('z-axis')
% Studying 3d-plots.

% Example 2: Now we create a line that will go through 3 points.
% Notice that the line starts at the origin.
x1 = [0 1 5];
y1 = [0 3 -3];
z1 = [0 -1 3];

plot3(x1,y1,z1)

% Example 3: Plotting a helix in R3 using parameteric descriptions.
% My parameter is defined over the interval [0,10]
t = linspace(0, 10);
% The three components of a vector valued function.
x3 = 5.*cos(t);
y3 = 5.*sin(t);
z3 = 2.*t;

figure
% hold on
plot3(x3,y3,z3,'r-')
%plot3(x3,y3,z3, 'bo')
% scatter3(x3,y3,z3)
grid on
axis on
axis('equal')
title('A Helix in Space, radius ')

hold off
% =============================================================
% 3D-SURFACES.
% =============================================================

% We start by defining points in the xy-plane.
% The we can

% Example 2.1
% The patch command connects 3 points in space as a triangle.
% We define three points that will be the vertices of our triangle.
x5 = [-1 2 -2];
y5 = [0 2 -1];
z5 = [0 2 0];
figure
patch(x5,y5,z5,'b')
title('Demonstration of how to connect 3 points as a surface')
grid on

% Example 2.2: Using the mesh function.
% 1. Define the domain that we are interested in.
% A. Create the range of vectors that is needed by mesh.
x6 = [0 2 -2];
y6 = [0 2 -2];
% Mesh takes two vectors and returns the 2d version of the vectors.
[X, Y] = meshgrid(x6,y6);
% Now we can use these data points and evaluate a function that
% outputs the height aove the xy-plane.
Z = Y.^2;
mesh(X, Y, Z)   % Notice how low quality our plot is.

% We improve our surface by adding mroe than 3 points.
% Call mesh to create a cartesianproduct called (X x Y)
x7 = linspace(-4,4);
y7 = linspace(-5,5);
[X0, Y0] = meshgrid(x7,y7);

Z0 = Y0.^2;
figure
mesh(X0,Y0,Z0)

% Example 4: 




% Example 5: Plotting a sphere using the parameteric description of 
%            a sphere.
r = 4;
% A parameteric surface has two parameters.
% We use spherical co-ordinates.
theta = linspace(0,2*pi);           % Angle of longtutude [0, 2pi]
phi  = linspace(0,pi);              % Angle of latitude [0, pi]

% Uncomment and play around with limits of parameters.
% phi  = linspace(0,pi./2);              % Angle of latitude [0, pi]

% We need to use the new points Phi and Theta when plotting surfaces.
[Phi,Theta] = meshgrid(phi, theta);

x4 = r.*sin(Phi).*cos(Theta);
y4 = r.*sin(Phi).*sin(Theta);
z4 = r.*cos(Phi);

figure
plot3(x4,y4,z4)
grid on
axis('equal')
