function d = dihotomy(left, right, epsilon)
    okno1=figure();
    while ((right-left) > epsilon)
        c = (left + right) / 2;
        if(isrising(c, epsilon) != isrising(right, epsilon))
            left = c;
        else
            right = c;
        endif
        %Вычисляем значение функции sin(x).
        y=sin(c);
        %Выводим график функции sin(x) чёрного цвета.
        plot(c,y,'k');
        hold on;
        %Выводим линии сетки.
        grid on;
        %Выводим заголовок графика.
        title('Plot y=sin(x)');
    endwhile
    %Закрываем окно с дескриптором okno1.
    delete(okno);
    d = (left+right)/2;
endfunction

function f1 = f(x,epsilon)
    f1 = sin(x);
endfunction

function [y] = isrising(x,epsilon)
    if (f(x,epsilon)>f((x-epsilon/10000),epsilon))
        y = 1;
    else
        y = -1;
    endif
endfunction
 


epsilon = 1e-4;
dihotomy (-2, 1, epsilon)
