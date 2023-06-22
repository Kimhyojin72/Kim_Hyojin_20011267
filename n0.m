function nu = n0(a,e,toc,T,M0)

mu = 3.986004418*10^5;

M1 = datetime(T) - datetime(toc);

[h, m, s] = hms(M1);

M = (h * 3600 + m * 60 + s) / (sqrt(a^3/mu)) + M0;

E = M;
threshold = 1e-8;
maxIterations = 100;
for i = 1 : maxIterations
    E_prev = E;
    E = M + e * sin(E);
    if abs(E-E_prev) < threshold
        break
    end
end

nu = atan2((sqrt(1-e^2)*sin(E)) / (1 - e*cos(E)) , ((cos(E)-e) / (1-e*cos(E)))) ;
nu = nu * 180/pi;

if nu < 0 
    nu = nu + 360;
end
