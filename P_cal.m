function [ p_cal ] = P_cal(thet,thetdera)

p_cal  = mass_mat(thet) * thetdera;

end