function para = hj(T, nav, sys)
if sys == "GPS"
    nu = n0(nav.GPS.a*10^(-3), nav.GPS.e, nav.GPS.toc,T, nav.GPS.M0*(180/pi));
    para = [nav.GPS.a*10^(-3); nav.GPS.e; nav.GPS.i*(180/pi); nav.GPS.OMEGA*(180/pi); nav.GPS.omega*(180/pi); nu];
end

if sys == "QZSS"
    nu = n0(nav.QZSS.a*10^(-3), nav.QZSS.e, nav.QZSS.toc,T, nav.QZSS.M0*(180/pi));
    para = [nav.QZSS.a*10^(-3); nav.QZSS.e; nav.QZSS.i*(180/pi); nav.QZSS.OMEGA*(180/pi); nav.QZSS.omega*(180/pi); nu];
end

if sys == "BDS"
    nu = n0(nav.BDS.a*10^(-3), nav.BDS.e, nav.BDS.toc,T, nav.BDS.M0*(180/pi));
    para = [nav.BDS.a*10^(-3); nav.BDS.e; nav.BDS.i*(180/pi); nav.BDS.OMEGA*(180/pi); nav.BDS.omega*(180/pi); nu];
end