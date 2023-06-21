function R= solveRangeInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)

a = semimajor_axis;
e =eccentricity;
v =true_anomaly*pi/180;

r= a*(1-e^2)/ (1+e*cos(v));

R=[r*cos(v); r*sin(v); 0];


end 


function V= solveVelocityInPerifocalFrame(semimajor_axis, eccentricity, true_anomaly)

a = semimajor_axis;
e =eccentricity;
v =true_anomaly*pi/180;

u=3.98604418*10^5; % unit:[km^3/s^2]

r= a*(1-e^2);

V=sqrt(u/r)*[-sin(v); e+cos(v);0];

end

