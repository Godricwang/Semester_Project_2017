function dd = call_two_link(tau,thet,thetdera)


mass_ = mass_mat(thet);
cc_ = cc_mat(thet,thetdera);
g_ = g_mat(thet);
dd  =  mass_mat(thet)\(tau - (cc_mat(thet,thetdera)*thetdera + g_mat(thet)));

end