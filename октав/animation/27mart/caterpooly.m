function caterpooly(start_pos, start_vel, bottom_left, top_right, iterations)
    pos = start_pos;
    vel = start_vel;
    figure;
    hold on;

    axis([bottom_left(1), top_right(1), bottom_left(2), top_right(2)]);
    plot(pos(1), pos(2), 'ro');
    for i = 1:iterations
        %достигла ли гусеница края листа
        if pos(1) <= bottom_left(1) || pos(1) >= top_right(1)
          vel(1) = -vel(1);
        end
        if pos(2) <= bottom_left(2) || pos(2) >= top_right(2)
            vel(2) = -vel(2);
        end
        % Обновляем
        pos = pos + vel;
        plot(pos(1), pos(2), 'ro');
        pause(0.1);
    end
end

