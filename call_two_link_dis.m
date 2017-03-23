function dd_dis = call_two_link_dis(tau,thet,thetdera)

dd  =  mass_mat(thet)\(tau - (cc_mat(thet,thetdera)*thetdera + g_mat(thet)));

Ts = 0.1;

dd_dis = c2d(dd,Ts);

end