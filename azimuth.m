function az= azimuth(ENU)


 az = atan2(ENU(:,1), ENU(:,2));

[p,q]= size(az);

for i = 1:1:p
        az(i)= az(i)+ 2*pi;
end

    az(i)= az(i)*180/pi;


end
