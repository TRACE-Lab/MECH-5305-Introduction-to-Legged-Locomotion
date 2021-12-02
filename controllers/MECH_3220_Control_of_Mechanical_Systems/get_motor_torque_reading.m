function motor_torque_reading = get_motor_torque_reading(motors)

    torque=zeros(20,1);
    for i =1:20
    
        torque(i)= wb_motor_get_torque_feedback(motors{i});
        
    end
    motor_torque_reading = torque;
end