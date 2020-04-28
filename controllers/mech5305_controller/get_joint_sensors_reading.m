function joint_sensors_reading = get_joint_sensors_reading(joint_sensors)
    q_joint=zeros(20,1);
    for i =1:20
    
        q_joint(i)= wb_position_sensor_get_value(joint_sensors{i});
        
    end
    joint_sensors_reading = q_joint;
end