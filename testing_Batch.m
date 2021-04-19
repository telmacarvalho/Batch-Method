testing_Data = [0 0 1; 0 1 1; 1 0 1; 1 1 1];
N = 4;
for k = 1:N
    transposed_Input = testing_Data(k, : )';
    output = Weight*transposed_Input; % O peso aqui é o adquirido após o treinamento
    y = Sigmoid(output)
end

    