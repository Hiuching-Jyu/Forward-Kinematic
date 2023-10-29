% function [outputArg1] = four_paramters2matrix(a, alpha, d, theta)    % DH Modified
function [outputArg1] = four_paramters2matrix(theta,d,a,alpha)         % DH standard
    
% Angles are in radians.
cos_alpha = cos(alpha);
sin_alpha = sin(alpha);

% Convert Matlab's default tiny values to 0 or 1.
if abs(cos_alpha-1) < 1e-10
    cos_alpha = 1;
end

if abs(sin_alpha-1) < 1e-10
    sin_alpha = 1;
end

if abs(cos_alpha) < 1e-10
    cos_alpha = 0;
end

if abs(sin_alpha) < 1e-10
    sin_alpha = 0;
end

% Calculate single transformation matrix

% %% DH modified
% outputArg1 = [cos(theta) -sin(theta) 0 a;
%     sin(theta)*cos_alpha cos(theta)*cos_alpha -sin_alpha -sin_alpha*d;
%     sin(theta)*sin_alpha cos(theta)*sin_alpha cos_alpha cos_alpha*d;
%     0 0 0 1];

%% DH standard
outputArg1 = [  cos(theta)      -sin(theta)*cos_alpha   sin(theta)*sin_alpha    a*cos(theta);
                sin(theta)      cos(theta)*cos_alpha    -cos(theta)*sin_alpha   a*sin(theta);
                0               sin_alpha               cos_alpha               d;
                0               0                       0                       1];

end
