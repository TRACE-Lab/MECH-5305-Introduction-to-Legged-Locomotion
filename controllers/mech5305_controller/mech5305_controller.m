% MATLAB controller for Webots
% File:          mech5305_controller.m
% Date:
% Description:
% Author:
% Modifications:

% uncomment the next two lines if you want to use
% MATLAB's desktop to interact with the controller:
desktop;
keyboard;

TIME_STEP = 16;
sampling_period = 16;
% get and enable devices, e.g.:
%  camera = wb_robot_get_device('camera');
%  wb_camera_enable(camera, TIME_STEP);
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
while wb_robot_step(TIME_STEP) ~= -1
    % obtain the joint and base-configuration sensor reading
    q_joint = get_joint_sensors_reading(joint_sensors);
    q_base = get_base_config_sensors_reading(base_config_sensor);
    
    key = wb_keyboard_get_key();
    
    if key == 73  % i
        initilization = 1;
    elseif key == 83 %s
        start_walking = 1;
    elseif key == 81 %q
        start_walking = 0;
    end
    
    
    if initilization ==1
        % initilize the pose of the robot
        wb_motor_set_position(motors{15}, 0);
        wb_motor_set_position(motors{16}, 0);
        %wb_motor_set_position(motors{17}, phi_motion(23));
        wb_motor_set_position(motors{18}, 0);
        wb_motor_set_position(motors{19}, -0);
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
    
    if start_walking == 1
        
        
    end
  % Process here sensor data, images, etc.

  % send actuator commands, e.g.:
  %  wb_motor_set_postion(motor, 10.0);

  % if your code plots some graphics, it needs to flushed like this:
  %drawnow;

end

% cleanup code goes here: write data to files, etc.
