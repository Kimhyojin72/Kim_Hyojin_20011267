%20011267 김효진
%%Week #12

function velocityInPQW = solveVelocityInPerifocalFrame(semimajor_axis,eccentricity,true_anomaly)

true_anomaly_rad = true_anomaly * pi/180;

mu = 3.986004418*10^14; %[m^3s^(-2)]

velocityInPQW = sqrt(mu/(semimajor_axis*(1-eccentricity^2))).*[-sin(true_anomaly_rad); eccentricity+cos(true_anomaly_rad); 0];

end