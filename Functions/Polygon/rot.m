% Copyright 2016 Sotiris Papatheodorou
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

% Rotates the coordinates of A by theta (in radians)
function B = rot(A,theta)

R = [    cos(theta)  -sin(theta);
            sin(theta)  cos(theta)];
B = zeros( size(A) );
N = length(A(1,:));
for i=1:N
    B(:,i) = R * A(:,i);
end
