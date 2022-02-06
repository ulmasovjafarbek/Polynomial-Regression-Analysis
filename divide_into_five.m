function [d1,d2,d3,d4,d5] = divide_into_five(data)
    randomized_data = data(:,randperm(length(data)));
    d1 = randomized_data(:,1:20);
    d2 = randomized_data(:,21:40);
    d3 = randomized_data(:,41:60);
    d4 = randomized_data(:,61:80);
    d5 = randomized_data(:,81:100);
end