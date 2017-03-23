function [ joint_tau_dis ] = two_link_gravity_position_control_dis( thet_des, thet, thetdera )
% CONTROL_PD_G Joint space PD controller with gravity compensation.
%
% thet_des --> a vector R^n of desired joint angles.
% thet --> a vector R^n of measured joint angles.
% thetdera --> a vector in R^n of measured joint velocities

% Gains 
% Here the controller response is mainly inertia dependent
% so the gains have to be tuned joint-wise


kpMat = diag([8.0 8.0]);
kdMat = diag([12.0 12.0]);

% The control action has a gravity compensation term, as well as a PD
% feedback action which depends on the current state and the desired
% configuration.
joint_tau_dis = kpMat * (thet_des - thet)  ...
          - kdMat * thetdera        ...
          + g_mat(thet);


end