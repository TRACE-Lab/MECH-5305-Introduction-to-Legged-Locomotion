% MATLAB controller for Webots
% File:          MECH5305_controller.m
% Date:
% Description: homework 3 for course MECH5305
% Author: Yuan Gao
% Modifications:

% uncomment the next two lines if you want to use
% MATLAB's desktop to interact with the controller:
desktop;
keyboard;

TIME_STEP = 16;
sampling_period = 32;
% get and enable devices, e.g.:
%  camera = wb_robot_get_device('camera');
%  wb_camera_enable(camera, TIME_STEP);

% load the motion file
load q_joint_ref_vec.mat

% get objects of motors
motors = get_motors;
% get objects of joints position sensor
joint_sensors = get_joint_sensors(sampling_period);
% get base-configuration (GPS/IMUs) reading
base_config_sensor = get_base_config_sensor(sampling_period);

% enable keyboard input
wb_keyboard_enable(sampling_period);


% main loop:
% perform simulation steps of TIME_STEP milliseconds
% and leave the loop when Webots signals the termination
%
initilization = 0;
start_walking = 0;
motion_file_index=1;
while wb_robot_step(TIME_STEP) ~= -1
    % obtain the joint and base-configuration sensor reading
    q_joint = get_joint_sensors_reading(joint_sensors);
    q_base = get_base_config_sensors_reading(base_config_sensor);
    
    key = wb_keyboard_get_key();
    
    if key == 73  % i
        initilization = 1;
        fprintf("initilize the robot pose\n")
    elseif key == 83 %s
        start_walking = 1;
        fprintf("start walking\n")
    elseif key == 81 %q
        start_walking = 0;
        
    end
    
    
    if initilization ==1
        % initilize the pose of the robot
        wb_motor_set_position(motors{15}, 0);
        wb_motor_set_position(motors{16}, pi/2.3);
        %wb_motor_set_position(motors{17}, phi_motion(23));
        wb_motor_set_position(motors{18}, 0);
        wb_motor_set_position(motors{19}, -pi/2.3);
        wb_motor_set_position(motors{1}, 0);
        wb_motor_set_position(motors{2}, 0);
        wb_motor_set_position(motors{3}, 0);
        wb_motor_set_position(motors{4}, 0);
        wb_motor_set_position(motors{5}, 0);
        wb_motor_set_position(motors{6}, 0);
        wb_motor_set_position(motors{7}, 0);
        wb_motor_set_position(motors{8}, 0);
        wb_motor_set_position(motors{9}, 0);
        wb_motor_set_position(motors{10}, 0);
        wb_motor_set_position(motors{11}, 0);
        wb_motor_set_position(motors{12}, 0);
        wb_motor_set_position(motors{13}, 0);
        wb_motor_set_position(motors{14}, 0);
        initilization = 0;
    end
    %start_walking
    if start_walking == 1
        q_joint_ref = q_joint_ref_vec(7:end,motion_file_index);
        wb_motor_set_position(motors{1}, q_joint_ref(1));
        wb_motor_set_position(motors{2}, q_joint_ref(2));
        wb_motor_set_position(motors{3}, q_joint_ref(3));
        wb_motor_set_position(motors{4}, q_joint_ref(4));
        wb_motor_set_position(motors{5}, q_joint_ref(5));
        wb_motor_set_position(motors{6}, q_joint_ref(6));
        wb_motor_set_position(motors{7}, q_joint_ref(7));
        wb_motor_set_position(motors{8}, q_joint_ref(8));
        wb_motor_set_position(motors{9}, q_joint_ref(9));
        wb_motor_set_position(motors{10}, q_joint_ref(10));
        wb_motor_set_position(motors{11}, q_joint_ref(11));
        wb_motor_set_position(motors{12}, q_joint_ref(12));
        wb_motor_set_position(motors{13}, q_joint_ref(13));
        wb_motor_set_position(motors{14}, q_joint_ref(14));
        wb_motor_set_position(motors{15}, q_joint_ref(15));
        %wb_motor_set_position(motors{16}, q_joint_ref(16));
        wb_motor_set_position(motors{17}, q_joint_ref(17));
        wb_motor_set_position(motors{18}, q_joint_ref(18));
        %wb_motor_set_position(motors{19}, q_joint_ref(19));
        wb_motor_set_position(motors{20}, q_joint_ref(20));
        motion_file_index = motion_file_index+1;
        if motion_file_index>5700
            start_walking = 0;
        end
            
    end


end

% cleanup code goes here: write data to files, etc.
