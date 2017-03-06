% Copyright 2017 Sotiris Papatheodorou
% 
% Licensed under the Apache License, Version 2.0 (the \"License\");
% you may not use this file except in compliance with the License.
% You may obtain a copy of the License at
% 
%    http://www.apache.org/licenses/LICENSE-2.0
% 
% Unless required by applicable law or agreed to in writing, software
% distributed under the License is distributed on an \"AS IS\" BASIS,
% WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
% See the License for the specific language governing permissions and
% limitations under the License.

% Jacobian of an elliptical sensing pattern at point q on the ellipse
function T = J_ellipse_th(q, xi, yi, zi, thi, zmin, a, b)

% Find value of parameter t
q = q - [xi ; yi];
q = q * zmin / zi;
q = rot(q, -thi);
t = atan2( q(2)/b, q(1)/a );

% Corresponding point on base pattern
g = [a*cos(t) ; b*sin(t)];
T = zi / zmin * ...
    [-sin(thi) -cos(thi) ; cos(thi) -sin(thi)] * g;