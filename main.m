clc;
clear;
format short;
syms theta1;syms theta2;syms theta3;syms theta4;syms theta5;syms theta6;
syms a1; syms d2; syms a2; syms a3; syms d4; syms d6;

% calculate the homogeneous transformation matrix
A1 = four_paramters2matrix(0, 0, 0, theta1);
A2 = four_paramters2matrix(a1, -pi/2, d2, theta2);
A3 = four_paramters2matrix(a2, 0, 0, theta3);
A4 = four_paramters2matrix(a3, -pi/2, d4, theta4);
A5 = four_paramters2matrix(0, pi/2, 0, theta5);
A6 = four_paramters2matrix(0, -pi/2, d6, theta6);

%display the homogeneous transformation matrix

A1
A2
A3
A4
A5
A6

% display the process of calculation
T02 = A1*A2
T03 = A1*A2*A3
T04 = A1*A2*A3*A4
T05 = A1*A2*A3*A4*A5
T06 = A1*A2*A3*A4*A5*A6

% Forward kinematic chain
vpa(T06)
disp(T06);

