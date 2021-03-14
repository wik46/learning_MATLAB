% Author: Wikus Jansen van Rensburg
% Date: March 13, 2021
% Description: This script was written while working on problems
%               that showed the usefillness of the Divergence Thm.
%              The goal was to solved the problems first by hand drawings
%              and then plot the surfaces using matlab.
%              
clear
clc
close all

% % Example 1: 
% % We visualize the region D that is bounded between the spheres of
% % radius 2 and radius 4.
% % We are describing the sphere in spherical co-ordinates.
% % These are the 2 parameters needed to plot the surface of the sphere.
% rho2 = 2;
% rho4 = 4;
% phi = linspace(0,pi/2);  % We only show the half of the sphere to see the inner spehere.
% theta = linspace(0, 2*pi);
% % Note that we define the variables in the phi-theta plane and then
% % define a tranformation from rho-phi-theta space to xyz-space.
% [PHI,THETA] = meshgrid(phi, theta);
% 
% % We define the rule of the transformation here.
% x = rho2.*sin(PHI).*cos(THETA); % We specify the x co-ordinates to plot
% y = rho2.*sin(PHI).*sin(THETA); % We specify the y co-ordinates to plot
% z = rho2.*cos(PHI); % We specify the z co-ordinates to plot
% 
% x1 = rho4.*sin(PHI).*cos(THETA); % We specify the x co-ordinates to plot
% y1 = rho4.*sin(PHI).*sin(THETA); % We specify the y co-ordinates to plot
% z1 = rho4.*cos(PHI); % We specify the z co-ordinates to plot
% 
% 
% figure
% surf(x, y, z, 'FaceAlpha',0.5)
% colorbar
% 
% axis('equal') % This stops Matlab from self-adjusting the co-ordinate system.
% grid on
% hold on
% % Plooting the surface with radius 4.
% surf(x1, y1, z1)
% 
% % Example 2:
% % D is the region in the first octant bounded by the planes z = 4-x-y 
% %   z= 2-x-y.
% x2 = 0:0.01:5;      % creating an interval from 0 -> 5.
% y2 = x2;
% [X2, Y2] = meshgrid(x2, y2);
% % One of the planes that serve as a bound for the region.
% za = 4 - X2 - Y2;
% zb = 2 - X2 - Y2;
% zc = 0 .*X2;
% 
% figure
% surf(X2, Y2, za)
% hold on
% mesh(X2, Y2, zb)
% mesh(X2, Y2, zc)
% 
% xlabel('x-axis')
% ylabel('y-axis')
% zlabel('z-axis')
% grid on

% % Example 3:
% % =====================================
% % Scalar Valued Functions: Scalar Field
% % =====================================
% % Basic single variable graph.
% x = -3:0.01:3;   % Vector 1
% f = x.* exp(-x .^2); % Vector 2.
% plot(x,f)
% 
% title('Basic Graph of a Single Variable Function')
% xlabel('Independent Variable')
% ylabel('Dependent Variable')
% grid on
% 
% % 1. Basic Multivariable Function
% % These are 2-dimensional vectors.
% x0 = linspace(-3,3);
% y0 = linspace(-3,3);
% [x1, y1] = meshgrid(x0,y0);     % Input Space is [-3,3]x[-3,3]
% % Function of two variable.
% f1 = x1 .* exp(-x1.^2 -y1.*2);      % f is also a 2d-vector.
% 
% figure
% mesh(x1, y1, f1)


% 2. Firstly we plot some points.
% That is a very low resolution of the function.
[x, y, z] = meshgrid(-3:0.5:3);
T = sin(x) + cos(y) + z;
% The first 3 arguments define position, the 4th defines the area of
% each marker, and the 5th represent the color.
figure
%scatter3(x(:), y(:), z(:), [], T(:));

% But we can do better.
% The first 3 arguments is where the function was evaluated.
% The 4th is the function value.
% The last determine where the input arguments are.
% (Uncomment each slice version to see what happens.)
% The last 3 arguments define the surface that contains all
% the input points that will be displayed.

%slice(x, y, z, T, [],[],[])  % We pass in an empty vector [].

% The last three arguments I indicate whate points to show.
% In this version we are going to plot all the values of our function
% on the planes x = 0, y = 0, z = 0.
% That is we display all the function outputs on these surfaces.

%slice(x, y, z, T, 0,0,0)  % We pass in an empty vector [].

%slice(x, y, z, T, [],0,0)  % We pass in an empty vector [].

% This is going to draw the planes x = -2, x = 2, y = 0, z = 0.
%slice(x, y, z, T, [-2, 2] ,0,0)  % We pass in an empty vector [].

% Now we create a surface as the input spaces.
% Suppose T was the temperature at a point (x,y,z)
% We can now create a surface and see what the temperature
% at each points on the surface is.
[x0, y0] = meshgrid(-3:0.1:3);
z0 = cos(x0) - sin(y0);

figure
title('Example of plotting the temperature at a given point. on a surface')
slice(x, y, z, T, x0, y0, z0)

% =======================================================================
% Function of 3 Variables.


% =====================================
% Vector Valued Functions: Vector Field
% =====================================

