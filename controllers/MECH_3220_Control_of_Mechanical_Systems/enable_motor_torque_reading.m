function  enable_motor_torque_reading(motors,sampling_period)

    for i =1:20
        wb_motor_enable_torque_feedback(motors{i},sampling_period)     
    end

end