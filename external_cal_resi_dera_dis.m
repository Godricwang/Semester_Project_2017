function [ ext_cal_resi_dera ] = external_cal_resi_dera_dis(joint_torque,thet,thetdera,ext_cal_resi)


ext_cal_resi_dera = 30 * (joint_torque + cc_mat(thet,thetdera)' * thetdera - g_mat(thet) - ext_cal_resi);


end