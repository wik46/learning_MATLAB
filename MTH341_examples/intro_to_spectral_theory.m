% Author: Wikus Jansen van Rensburg.gb 
% TOPIC: Introduction to Spectral Theory.
% DESCRIPTION: This program was used to test the solutions obtained
%              and to demonstrate ways to geometrically interpret
%              the results.
% LAST MODIFIED: March 8, 2021

clc
clear
close all


% Example: Diagonalize a given matrix to simplify the process of
%           finding higher powers of the matrix.
A0 = [1 2; 2 1]
% After diagonalizing A we write A ito:
S0 = [1 -1; 1 1]
D = [3 0; 0 -1]
S0_inv = [0.5 0.5; -.5 .5]
% Easier form of A to work with.
equal_A0 = S0 * D * S0_inv

A0^10           % Finding the powers of the matrix.

% Another matrix that we diagonlize to easierly compute high powers.
S1 = [23 4 1; 20 1 0; 12 0 0]
S1_inv = inv(S1)
D1 = [5 0 0; 0 2 0; 0 0 1]
equal_A1 = S1 * D1 * S1_inv


 D_power = D1^20
 
A1 = [1 4 1; 0 2 5; 0 0 5]
power = A1^50