function [ p_cal ] = P_cal_dis(thet,thetdera)

p_cal  = mass_mat(thet) * thetdera;

end