
input = [0 0 1; 0 1 1; 1 0 1; 1 1 1];
correct_Output = [0; 1; 1; 0];
Weight = 2*rand(1,3)-1;

for epoch = 1:80000
    Weight = function_Batch(Weight, input, correct_Output);
end

N = 4;
for k = 1:N
    transposed_Input = input(k,:)';
    weighted_Sum = Weight*transposed_Input;
    output = Sigmoid(weighted_Sum)
end
