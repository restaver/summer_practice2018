left = -1;
right = 1;
epsilon = 1e-4;

function d = dihotomy(left, right, epsilon)
    okno=figure();
    while ((right-left) > epsilon)
        c = (left + right) / 2;
        if(isrising(c, epsilon) != isrising(right, epsilon))
            left = c;
        else
            right = c;
        endif
        %Вычисляем значение функции sin(x).
        y=f(c);
        %Выводим график функции sin(x) чёрного цвета.
        plot(c,y,'k');
        plx = left:right;
        fx = f(plx);
        plot(plx,fx);
        hold on;
        %Выводим линии сетки.
        grid on;
        %Выводим заголовок графика.
        title('Plot y=sin(x)');
    endwhile
    %Закрываем окно с дескриптором okno1.
    %delete(okno);
    d = (left+right)/2;
endfunction

function f1 = f(x)
    f1 = sin(x);
endfunction

function [y] = isrising(x,epsilon)
    if (f(x,epsilon)>f((x-epsilon/10000),epsilon))
        y = 1;
    else
        y = -1;
    endif
endfunction
 

dihotomy (-1, 1, epsilon)
