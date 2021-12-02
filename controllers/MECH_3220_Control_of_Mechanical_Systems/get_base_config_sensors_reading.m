function base_config_sensors_reading = get_base_config_sensors_reading(sensors)
  
    base_position = wb_gps_get_values(sensors{1});
    base_orientation = wb_inertial_unit_get_roll_pitch_yaw(sensors{2});
    x = base_position(1);
    y = -base_position(3);
    z = base_position(2)-0.0226;
    roll = base_orientation(1)+pi/2;
    pitch = -base_orientation(2);
    yaw = base_orientation(3);
    base_config_sensors_reading = [x;y;z;roll;pitch;yaw];
    
end
