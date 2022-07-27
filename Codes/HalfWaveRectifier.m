function output = HalfWaveRectifier(input)
    output = zeros([1, length(input)]);
    for n = 1 : length(input)
        if input(n) <= 0
            output(n) = 0;
        else
            output(n) = input(n);
        end
    end

end

