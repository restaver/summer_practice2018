function d = dihotomy(left, right, epsilon)
    while ((right-left) > epsilon)
        c = (left + right) / 2;
        if(isrising(c, epsilon) != isrising(right, epsilon))
            left = c;
        else
            right = c;
        endif
    endwhile
    d = (left+right)/2;
endfunction