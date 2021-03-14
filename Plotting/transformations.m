% Author: Wikus Jansen van Rensburg
% Description: This program was created to help visualize transformation
%               when studying change of variables for easier integration.
%               I used this script to visualize the changes in the domain
%               of integration occurs from the derived transformation.

clear
clc
close all

% Example 1: Basic scaling of a square.
u0 = linspace(0,1);
v0 = linspace(0,1);
[U0,V0] = meshgrid(u0,v0);

figure
mesh(U0,V0)