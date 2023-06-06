function el= elevation(ENU, el_mask)

for i = 1:size(ENU,1)
    el(i) = asin(ENU(i,3)/norm(ENU(2,2)))*180/pi;

    if el(i) < el_mask
        el(i) = NaN;
    end

end
 
end
