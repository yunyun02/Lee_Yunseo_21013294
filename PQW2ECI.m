function R = PQW2ECI(arg_prg, inc_angle, RAAN)
%(radians)
%arg_prg: Argument of perigee
%inc_angle: inclination
%RAAN: Right ascension of the ascending node

arg_prg= arg_prg*pi/180;
inc_angle= inc_angle*pi/180;
RAAN= RAAN*pi/180;

R1=[cos(RAAN) -sin(RAAN) 0; sin(RAAN) cos(RAAN) 0; 0 0 1];

R2 = [1 0 0; 0 cos(inc_angle) -sin(inc_angle); 0 sin(inc_angle) cos(inc_angle)];

R3 = [cos(arg_prg) -sin(arg_prg) 0; sin(arg_prg) cos(arg_prg) 0; 0 0 1];

R = R1*R2*R3;



end