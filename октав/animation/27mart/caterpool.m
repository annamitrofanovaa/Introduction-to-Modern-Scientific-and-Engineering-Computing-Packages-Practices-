function caterpool(start_pos, start_vel, bottom_left, top_right, iterations)
    pos = start_pos;
    vel = start_vel;
    plot(pos(1), pos(2), 'ro');
    % Создаем фигуру для построения графика
    figure;
    hold on;
    % Определяем оси графика
    axis([bottom(1), top_right(1), bottom_left(2), top_right(2)]);
    % Построение начального положения гусеницы
    plot(pos(1), pos(2), 'ro');
    i = 1:iterations
        % Проверяем, достигла ли гусеница края листа
        if pos(1) <= bottom_left(1) || pos(1) >= top_right(1)
            vel(1) = -vel(1);
        end
        if pos(2) <= bottom_left(2) || pos(2) >= top_right(2)
            vel(2) = -vel(2);
        end
        % Обновляем положение гусеницы
        pos = pos + vel;
        % Построение текущего положения гусеницы
        plot(pos(1), pos(2), 'ro');
        % Задержка между итерациями
        pause(0.1);
    end


