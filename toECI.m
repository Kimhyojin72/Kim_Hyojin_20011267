function ECI_R = toECI(sys, nav, time)
if sys == "GPS"
    semimajor_axis = nav.GPS.a*10^(-3);
    eccentricity = nav.GPS.e;
    arg_prg = nav.GPS.omega;
    RAAN = nav.GPS.OMEGA;
    M0 = nav.GPS.M0;
    toc = nav.GPS.toc;
    true_anomaly = n0(semimajor_axis,eccentricity,toc,time,M0);
    inc_angle = nav.GPS.i;
    rangeInPQW = solveRangeInPerifocalFrame(semimajor_axis,eccentricity,true_anomaly);
    DCM=PQW2ECI(arg_prg,inc_angle,RAAN);
    ECI_R = DCM * rangeInPQW;
end

if sys == "QZSS"
    semimajor_axis = nav.QZSS.a*10^(-3);
    eccentricity = nav.QZSS.e;
    arg_prg = nav.QZSS.omega;
    RAAN = nav.QZSS.OMEGA;
    M0 = nav.QZSS.M0;
    toc = nav.QZSS.toc;
    true_anomaly = n0(semimajor_axis,eccentricity,toc,time,M0);
    inc_angle = nav.GPS.i;
    rangeInPQW = solveRangeInPerifocalFrame(semimajor_axis,eccentricity,true_anomaly);
    DCM=PQW2ECI(arg_prg,inc_angle,RAAN);
    ECI_R = DCM * rangeInPQW;
end

if sys == "BDS"
    semimajor_axis = nav.BDS.a*10^(-3);
    eccentricity = nav.BDS.e;
    arg_prg = nav.BDS.omega;
    RAAN = nav.BDS.OMEGA;
    M0 = nav.BDS.M0;
    toc = nav.BDS.toc;
    true_anomaly = n0(semimajor_axis,eccentricity,toc,time,M0);
    inc_angle = nav.GPS.i;
    rangeInPQW = solveRangeInPerifocalFrame(semimajor_axis,eccentricity,true_anomaly);
    DCM=PQW2ECI(arg_prg,inc_angle,RAAN);
    ECI_R = DCM * rangeInPQW;
end