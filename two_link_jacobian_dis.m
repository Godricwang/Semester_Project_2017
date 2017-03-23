function [ two_link_jac ] = two_link_jacobian_dis(thet)


two_link_jac = [ - 0.4 * sin(thet(1,1)) - 0.4 * sin(thet(1,1)+thet(2,1)) , -0.4 * sin(thet(1,1)+thet(2,1));
                   0.4 * cos(thet(1,1)) + 0.4 * cos(thet(1,1)+thet(2,1)) ,  0.4 * cos(thet(1,1)+thet(2,1))];

end