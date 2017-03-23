function [ dyn_dis ]=dyn_return(thet,thetdera,tau,external_tau)

dyn_dis = mass_mat_dis(thet)^(-1) * (tau - external_tau - cc_mat_dis(thet,thetdera) * thetdera - g_mat_dis(thet));


end