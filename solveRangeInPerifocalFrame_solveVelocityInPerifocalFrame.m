function R= rangeInPQW(semimajor_axis, eccentricity, true_anomaly)

r= semimajor_axis/(1+eccentricity*cos(true_anomaly))

R=[r*cos(true_anomaly); r*sin(true_anomaly); 0]

end 


function V= velocityInPQW(semimajor_axis, eccentricity, true_anomaly)

u=3.98604418*10^5 % unit:[km^3/s^2]

r= semimajor_axis/(1+eccentricity*cos(true_anomaly))

V=sqrt(u/semimajor_axis)*[-sin(true_anomaly); eccentricity+cos(true_anomaly);0]

end

