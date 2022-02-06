function [training_data, test_data] = separate_data(data, n)
    test_data = data(n,:);
    data(n,:) = [];
    training_data = [data(1,:) data(2,:) data(3,:), data(4,:)];
end