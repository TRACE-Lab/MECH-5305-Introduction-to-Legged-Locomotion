function joint_sensors = get_joint_sensors(sampling_period)
    head_panS = wb_robot_get_device('NeckS');
    head_tiltS = wb_robot_get_device('HeadS');

    l_hip_yawS = wb_robot_get_device('PelvYLS');
    l_hip_rollS = wb_robot_get_device('PelvLS');
    l_hip_pitchS = wb_robot_get_device('LegUpperLS');
    l_kneeS = wb_robot_get_device('LegLowerLS');
    l_ank_pitchS = wb_robot_get_device('AnkleLS');
    l_ank_rollS = wb_robot_get_device('FootLS');
    r_hip_yawS = wb_robot_get_device('PelvYRS');
    r_hip_rollS = wb_robot_get_device('PelvRS');
    r_hip_pitchS = wb_robot_get_device('LegUpperRS');
    r_kneeS = wb_robot_get_device('LegLowerRS');
    r_ank_pitchS = wb_robot_get_device('AnkleRS');
    r_ank_rollS = wb_robot_get_device('FootRS');


    l_sho_pitchS = wb_robot_get_device('ShoulderLS');
    l_sho_rollS = wb_robot_get_device('ArmUpperLS');
    l_elS = wb_robot_get_device('ArmLowerLS');
    r_sho_pitchS = wb_robot_get_device('ShoulderRS');
    r_sho_rollS = wb_robot_get_device('ArmUpperRS');
    r_elS = wb_robot_get_device('ArmLowerRS');
    
    
    wb_position_sensor_enable(head_panS, sampling_period);
    wb_position_sensor_enable(head_tiltS, sampling_period);

    wb_position_sensor_enable(l_hip_yawS, sampling_period);
    wb_position_sensor_enable(l_hip_rollS, sampling_period);
    wb_position_sensor_enable(l_hip_pitchS, sampling_period);
    wb_position_sensor_enable(l_kneeS, sampling_period);
    wb_position_sensor_enable(l_ank_pitchS, sampling_period);
    wb_position_sensor_enable(l_ank_rollS, sampling_period);
    wb_position_sensor_enable(r_hip_yawS, sampling_period);
    wb_position_sensor_enable(r_hip_rollS, sampling_period);
    wb_position_sensor_enable(r_hip_pitchS, sampling_period);
    wb_position_sensor_enable(r_kneeS, sampling_period);
    wb_position_sensor_enable(r_ank_pitchS, sampling_period);
    wb_position_sensor_enable(r_ank_rollS, sampling_period);

    wb_position_sensor_enable(l_sho_pitchS, sampling_period);
    wb_position_sensor_enable(l_sho_rollS, sampling_period);
    wb_position_sensor_enable(l_elS, sampling_period);
    wb_position_sensor_enable(r_sho_pitchS, sampling_period);
    wb_position_sensor_enable(r_sho_rollS, sampling_period);
    wb_position_sensor_enable(r_elS, sampling_period);

    joint_sensors = {head_panS;
                    head_tiltS;
                    l_hip_yawS;
                    l_hip_rollS;
                    l_hip_pitchS;
                    l_kneeS;
                    l_ank_pitchS;
                    l_ank_rollS;
                    r_hip_yawS;
                    r_hip_rollS;
                    r_hip_pitchS;
                    r_kneeS;
                    r_ank_pitchS;
                    r_ank_rollS;
                    l_sho_pitchS;
                    l_sho_rollS;
                    l_elS;
                    r_sho_pitchS;
                    r_sho_rollS;
                    r_elS};
end