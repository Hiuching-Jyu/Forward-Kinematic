
clc;
clear;
format short;
syms theta1;syms theta2;syms theta3;syms theta4;syms theta5;syms theta6;
syms a1; syms a2; syms a3; 
syms d1; syms d2; syms d4; syms d6;


% %% DH Modified 
% % calculate the homogeneous transformation matrix
% % a, alpha, d, theta
% T01 = four_paramters2matrix(0, 0, 0, theta1);
% T12 = four_paramters2matrix(a1, -pi/2, d2, theta2);
% T23 = four_paramters2matrix(a2, 0, 0, theta3);
% T34 = four_paramters2matrix(a3, -pi/2, d4, theta4);
% T45 = four_paramters2matrix(0, pi/2, 0, theta5);
% T56 = four_paramters2matrix(0, -pi/2, d6, theta6);
% 
% 
% %display the homogeneous transformation matrix
% 
% T01
% T12
% T23
% T34
% T45
% T56
% 
% % display the process of calculation
% T46 = T45*T56
% T36 = T34*T46
% T13 = T12*T23
% T16 = T13*T36
% T06 = T01*T16

%% DH Standard

% a, alpha, d, theta
%                           theta   d   a   alpha
T01 = four_paramters2matrix(theta1, d1, a1, -pi/2);
T12 = four_paramters2matrix(theta2, 0,  a2, 0);
T23 = four_paramters2matrix(theta3, 0,  a3, -pi/2);
T34 = four_paramters2matrix(theta4, d4, 0,  pi/2);
T45 = four_paramters2matrix(theta5, 0,  0,  -pi/2);
T56 = four_paramters2matrix(theta6, d6, 0,  0);

%display the homogeneous transformation matrix

T01
T12
T23
T34
T45
T56

% display the process of calculation
T46 = T45*T56
T36 = T34*T46
T13 = T12*T23
T16 = T13*T36
T06 = T01*T16


