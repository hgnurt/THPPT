function integral = trapezoidal_integration_from_xy(~, x, y)
            y = str2func(['@(x)', y]);
            y = y(x);

            if length(x) ~= length(y)
                error('Mảng x và y phải có cùng kích thước.');
            end
            
            h = diff(x);
    
            integral = sum(h .* (y(1:end-1) + y(2:end)) / 2);
end