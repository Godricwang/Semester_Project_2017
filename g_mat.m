function g_ = g_mat(in1)
%% the rotation angle of two links
thet1 = in1(1,:);
thet2 = in1(2,:);
%% the rotaion angular velocity of two links
%thet1dera = in2(1,:);
%thet2dera = in2(2,:);
%% the length of the two links
%a1 = in3(1,:);
%a2 = in3(2,:);
a1 = 0.4;
a2 = 0.4;
%% the distance of link CoM to the relevant motor center
%l1 = in4(1,:);
%l2 = in4(2,:);
l1 = 0.2;
l2 = 0.2;
%% the mass of the two motors
%mm1 = in5(1,:);
%mm2 = in5(2,:);
mm1 = 0.8;
mm2 = 0.8;
%% the mass of the two links
%ml1 = in6(1,:);
%ml2 = in6(2,:);
ml1 = 0.5;
ml2 = 0.5;
%% inertia of two motors
%Im1 = in7(1,:);
%Im2 = in7(2,:);
Im1 = 0.0006;
Im2 = 0.0006;
%% inertia of two links
%Il1 = in8(1,:);
%Il2 = in8(2,:);
Il1 = 0.007;
Il2 = 0.007;
%% the gravity
%g = in9(1,:);
g = 10;
%% calculate the g matrix
g_ = [(ml1 * l1 + mm2 * a1 + ml2 * a1) * g * cos(thet1) + ml2 * l2 * g * cos(thet1 + thet2);
       ml2 * l2 * g * cos(thet1 + thet2)];
       


