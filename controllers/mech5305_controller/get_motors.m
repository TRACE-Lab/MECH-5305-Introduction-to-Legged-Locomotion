function motors = get_motors()
    head_pan = wb_robot_get_device('Neck');
    head_tilt = wb_robot_get_device('Head');

    l_hip_yaw = wb_robot_get_device('PelvYL');
    l_hip_roll = wb_robot_get_device('PelvL');
    l_hip_pitch = wb_robot_get_device('LegUpperL');
    l_knee = wb_robot_get_device('LegLowerL');
    l_ank_pitch = wb_robot_get_device('AnkleL');
    l_ank_roll = wb_robot_get_device('FootL');
    r_hip_yaw = wb_robot_get_device('PelvYR');
    r_hip_roll = wb_robot_get_device('PelvR');
    r_hip_pitch = wb_robot_get_device('LegUpperR');
    r_knee = wb_robot_get_device('LegLowerR');
    r_ank_pitch = wb_robot_get_device('AnkleR');
    r_ank_roll = wb_robot_get_device('FootR');

    l_sho_pitch = wb_robot_get_device('ShoulderL');
    l_sho_roll = wb_robot_get_device('ArmUpperL');
    l_el = wb_robot_get_device('ArmLowerL');
    r_sho_pitch = wb_robot_get_device('ShoulderR');
    r_sho_roll = wb_robot_get_device('ArmUpperR');
    r_el = wb_robot_get_device('ArmLowerR');
    
    % TO DO: Adjust the gain into resonalbe values so that the robot can do
    % some REAL walking
    %%%%%%%%%%%%%%
    Kp = 0.1;
    Kd = 0.1;
    %%%%%%%%%%%%%%
    
    wb_motor_set_control_pid(head_pan,Kp,0,Kd);
    wb_motor_set_control_pid(head_tilt,Kp,0,Kd);
    
    wb_motor_set_control_pid(l_hip_yaw,Kp,0,Kd);
    wb_motor_set_control_pid(l_hip_roll,Kp,0,Kd);
    wb_motor_set_control_pid(l_hip_pitch,Kp,0,Kd);
    wb_motor_set_control_pid(l_knee,Kp,0,Kd);
    wb_motor_set_control_pid(l_ank_pitch,Kp,0,Kd);
    wb_motor_set_control_pid(l_ank_roll,Kp,0,Kd);
    wb_motor_set_control_pid(r_hip_yaw,Kp,0,Kd);
    wb_motor_set_control_pid(r_hip_roll,Kp,0,Kd);
    wb_motor_set_control_pid(r_hip_pitch,Kp,0,Kd);
    wb_motor_set_control_pid(r_knee,Kp,0,Kd);
    wb_motor_set_control_pid(r_ank_pitch,Kp,0,Kd);
    wb_motor_set_control_pid(r_ank_roll,Kp,0,Kd);
    
    wb_motor_set_control_pid(l_sho_pitch,Kp,0,Kd);
    wb_motor_set_control_pid(l_sho_roll,Kp,0,Kd);
    wb_motor_set_control_pid(l_el,Kp,0,Kd);
    wb_motor_set_control_pid(r_sho_pitch,Kp,0,Kd);
    wb_motor_set_control_pid(r_sho_roll,Kp,0,Kd);
    wb_motor_set_control_pid(r_el,Kp,0,Kd);
    
    motors={head_pan;  %1
            head_tilt;  %2
            l_hip_yaw; %3
            l_hip_roll; %4
            l_hip_pitch; %5
            l_knee; %6
            l_ank_pitch; %7
            l_ank_roll; %8
            r_hip_yaw;  %9
            r_hip_roll;    %10
            r_hip_pitch;   %11
            r_knee;    %12
            r_ank_pitch; %13
            r_ank_roll;     %14
            l_sho_pitch;    %15
            l_sho_roll;   %16
            l_el;  %17
            r_sho_pitch;   %18
            r_sho_roll; %19
            r_el     %20
            }; 
end