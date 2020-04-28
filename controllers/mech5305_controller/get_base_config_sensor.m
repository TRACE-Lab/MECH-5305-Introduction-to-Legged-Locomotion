function base_config_sensor = get_base_config_sensor(sampling_period)
    gps = wb_robot_get_device('gps');
    inertial_unit = wb_robot_get_device('inertial unit');
    wb_gps_enable(gps,sampling_period);
    wb_inertial_unit_enable(inertial_unit,sampling_period);
    base_config_sensor = {gps;inertial_unit};
end