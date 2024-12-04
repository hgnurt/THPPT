function integral = simpson_38_integration(~, f, a, b, n)
            if mod(n, 3) ~= 0
                errordlg('Số đoạn chia n phải là bội số của 3.');
                error('Số đoạn chia n phải là bội số của 3.');
            end

            h = (b - a) / n;

            x = a:h:b;
            y = f(x);

            integral = (3 * h / 8) * (y(1) + ...
                        3 * sum(y(2:3:end-1)) + ...
                        3 * sum(y(3:3:end-1)) + ...
                        2 * sum(y(4:3:end-3)) + ...
                        y(end));
end