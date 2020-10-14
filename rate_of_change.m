function DX = rate_of_change(t,X,GM)
%
% The two-dimendional gravitational dynamics of a body.
%
% This function returns the time differential of X in DX, at time t.
% X is a vector of position and velocity formatted as 
%  [pos_x  pos_y  vel_x  vel_y]
%
% DX is a vector of velocity and acceleration formatted as
% [vel_x  vel_y  acc_x  acc_y]
%

%setup DX initially with zeros (you'll need to do this when you are looping 
%through many planets.  It's not so important for this example) 

N = 10; %No. of planets

DX = zeros(6*N,1);

for i = 1:N

  % coupled differential equations:
  % vel = d(pos)/dt:
  DX(6*i-5) = X(6*i-2);
  DX(6*i-4) = X(6*i-1);
  DX(6*i-3) = X(6*i);

  a = 0;
  b = 0;
  c = 0;
  for j = 1:N
    if i~=j

    r = sqrt( (X(6*j-5)-X(6*i-5))^2 + (X(6*j-4)-X(6*i-4))^2 + (X(6*j-3)-X(6*i-3))^2) ;

    %acc = d(vel)/dt 
    %This is where the gravity comes in, so  acc = F/m = GM|x1-x2|/r^3)

    a = -GM(j)* ( X(6*i-5)-X(6*j-5) ) /r^3;
    b = -GM(j)* ( X(6*i-4)-X(6*j-4) ) /r^3;
    c = -GM(j)* ( X(6*i-3)-X(6*j-3) ) /r^3;


    DX(6*i-2) = DX(6*i-2) + a;
    DX(6*i-1) = DX(6*i-1) + b;
    DX(6*i)   = DX(6*i) + c;


    end
  end
end





