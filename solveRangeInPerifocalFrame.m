%20011267 김효진
%%Week #12

function rangeInPQW = solveRangeInPerifocalFrame(semimajor_axis,eccentricity,true_anomaly)

true_anomaly_rad = pi/180 * true_anomaly;

r = semimajor_axis*(1-eccentricity^2)/(1+eccentricity*cos(true_anomaly_rad));
r_sn = [r; 0; 0];
rangeInPQW = [cos(true_anomaly_rad) -sin(true_anomaly_rad) 0; sin(true_anomaly_rad) cos(true_anomaly_rad) 0; 0 0 1]*r_sn;

end