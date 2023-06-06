function DCM = ECI2ECEF_ DCM(time)

jd= juliandate(time);

GMST= siderealTime(jd)*pi/180;

DCM=[cos(GMST), sin(GMST),0;
    -sin(GMST), cos(GMST),0;
    0,0,1:]

end