function el= elevation(ENU, el_mask)

el= asin (ENU(:,3)./sqrt(ENU(:,1).^2+ENU(:,2).^2+ENU(:,3).^2))*180/pi;

for i = 1:size(ENU,1)
   

    if el(i) < el_mask
        el(i) = NaN;
    end

end
 
end
