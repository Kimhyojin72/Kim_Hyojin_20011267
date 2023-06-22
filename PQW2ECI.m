function DCM=PQW2ECI(arg_prg,inc_angle,RAAN)

arg_prg_matrix=[cos(arg_prg) sin(arg_prg) 0 ;
    -sin(arg_prg) cos(arg_prg) 0;
    0 0 1];
inc_angle_matrix=[1 0 0 ;
    0 cos(inc_angle) sin(inc_angle) ;
    0 -sin(inc_angle) cos(inc_angle)];
RAAN_matrix=[ cos(RAAN) sin(RAAN) 0 ;
    -sin(RAAN) cos(RAAN) 0;
    0 0 1];

DCM=transpose(arg_prg_matrix*inc_angle_matrix*RAAN_matrix);