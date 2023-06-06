function az= azimuth(ENU)

for i = 1:size(ENU,1);

    az(i) = atan2(ENU(1,1), ENU(1,2));

    if az(i)<0
        az(i)= az(i)+ 2*pi;
    end

    az(i)= az(i)*180/pi;
end

end
