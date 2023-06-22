function el = elevation(ENU, el_mask)

% input : ENU
% output : elevation angle

el = rad2deg(asin(ENU(:,3) ./ vecnorm(ENU, 2, 2)));

num_d = size(ENU,1);

for i = 1 : num_d
    if (el(i)<=el_mask)
        el(i) = nan;
    end
end
el = el';

end
