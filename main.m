clc;
clear;
syms theta1;syms theta2;syms theta3;syms theta4;syms theta5;syms theta6;

% calculate the homogeneous transformation matrix
A1 = four_paramters2matrix(0, 0, 0, theta1);
A2 = four_paramters2matrix(0.41, -pi/2, 0.78, theta2);
A3 = four_paramters2matrix(1.075, 0, 0, theta3);
A4 = four_paramters2matrix(0.165, -pi/2, 1.056, theta4);
A5 = four_paramters2matrix(0, pi/2, 0, theta5);
A6 = four_paramters2matrix(0, -pi/2, 0.25, theta6);

%display the homogeneous transformation matrix

A1
A2
A3
A4
A5
A6

% display the process of calculation

t01 = A1*A2;
T12 = A2*A3;
T23 = A3*A4;
T34 = A4*A5;
T45 = A5*A6;

% Forward kinematic chain
T = A1*A2*A3*A4*A5*A6;
disp(T);

