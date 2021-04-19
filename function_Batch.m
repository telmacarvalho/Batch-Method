function Weight = function_Batch(Weight, input, correct_Output)

alpha = 0.9; % Taxa de aprendizagem
initial_Weight = zeros(3,1);

N = 4; % Quantidade de interações
for k = 1:N
    transposed_Input = input(k, : )';
    weighted_Sum = Weight*transposed_Input;
    output = Sigmoid(weighted_Sum); % Previsão de saída
    
    d = correct_Output(k);
    error = d-output;
    delta = output*(1-output)*error; % Valor de delta utilizando a generalização de delta rule
    
    modified_Weight = alpha*delta*transposed_Input;
    initial_Weight = initial_Weight + modified_Weight;
end

average_Weight = initial_Weight/N;
Weight(1) = Weight(1) + average_Weight(1);
Weight(2) = Weight(2) + average_Weight(2);
Weight(3) = Weight(3) + average_Weight(3);
end