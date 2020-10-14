function [path, t] = solsym(X,t0,tf,GM)
%
% input initial x and y position and  velocity components  
% of the orbiting body in the vector X, and the start and finish times t0, tf.
% GM is the gravitational constant times the mass of the attracting body. 
% This function returns the trajectory of the orbiting object in the 
% variable 'path'. This is a four-column array containing rows [x  y  vx  vy] at 
% times given by the vector t.

% look these options up in the MATLAB help, so you understand them. The tolerences in particular
% are important as they set the accuracy of the solution and the time it takes to get there.
% Set up sensible tolerences in position and velocity:

tol = [1e-11 1e-11 1e-11 1e-16 1e-16 1e-16];

options = odeset('InitialStep', 0.1, 'MaxStep', 50, 'Stats','off', 'RelTol', 1e-12); %, 'AbsTol', tol );

% call the ode45 function to solve our differential equations
% depending on the MATLAB installation, you may have to change
% @rate_of_change to 'rate_of_change' to get this to work!

[t, path] = ode45(@rate_of_change, [t0 tf], [X], options, GM);

% take a look at ode113 too.  Possibly quicker for your problem.

