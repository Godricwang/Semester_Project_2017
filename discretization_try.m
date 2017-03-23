function update = discretization_try(tau,the)


T_s = 0.05;
x_k_p_1 = [the(1:2) ; the(3:4)] - T_s * [mass_mat_dis(the(3:4)) * (tau - g_mat_dis(the(3:4)) - cc_mat_dis(the(3:4),the(1:2)) * the(1:2)); the(1:2)];

update = x_k_p_1;

%A_1 = - mass_mat_dis([1 1]')^(-1) * cc_mat_dis([1 1]',[1 1]');
%A = [ A_1 , zeros(2,2);
%      diag([1 1],0) , zeros(2,2)];  
%B_1 = - mass_mat_dis([1 1]')^(-1);
%B   = [B_1 , zeros(2,2);
%       zeros(2,2) , zeros(2,2)];
%C = [1 1 1 1];
%D = 0; 
%T_s = 0.05;


end




