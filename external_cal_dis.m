function [ ext_cal ] = external_cal_dis(joint_torque,thet,thetdera,p_dera)

ext_cal  = joint_torque - p_dera + cc_mat(thet,thetdera)' * thetdera - g_mat(thet);

end