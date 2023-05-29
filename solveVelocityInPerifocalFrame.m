%20011267 김효진
%%Week #12

function velocityInPQW = solveVelocityInPerifocalFrame(semimajor_axis,eccentricity,true_anomaly)

mu = 3.986004418*10^14; %[m^3s^(-2)]

velocityInPQW = sqrt(mu/(semimajor_axis(1-eccentricity^2)))*[-sin(true_anomaly); eccentricity+cos(true_anomaly); 0];

end