print "Введите количество строк в матрице 1: "
string_m1 = gets.to_i
print "Введите количество столбцов в матрице 1: "
row_m1 = gets.to_i
puts "Через прбел вводите числа в столбец матрицы 1 (их должно быть #{string_m1}), чтобы ввести следующий столбец, нажмите Enter"
mat1 = Array.new(row_m1) { Array.new(string_m1)}
def mult(mat1, row_m1)
    for i in 0...row_m1
        mat1[i] = gets.split
    end  
    return mat1
end
print mult(mat1, row_m1) 

print "Введите количество строк в матрице 2: "
string_m2 = gets.to_i
print "Введите количество столбцов в матрице 2: "
row_m2 = gets.to_i
puts "Через прбел вводите числа в столбец матрицы 2 (их должно быть #{string_m2}), чтобы ввести следующий столбец, нажмите Enter"
mat2 = Array.new(row_m2) { Array.new(string_m2)}
def mult(mat2, row_m2)
    for i in 0...row_m2
        mat2[i] = gets.split
    end  
    return mat2
end

print mult(mat2, row_m2) 
