def output(m)
  for row in m
    print row, "\n"
  end
end
print "Введите количество строк в матрице 1: "
string_m1 = gets.to_i
print "Введите количество столбцов в матрице 1: "
row_m1 = gets.to_i
puts "Через прбел вводите числа в столбец матрицы 1 (их должно быть #{string_m1}), чтобы ввести следующий столбец, нажмите Enter"
mat1 = Array.new(row_m1) { Array.new(string_m1)}
def mult1(mat1, row_m1)
    for i in 0...row_m1
        mat1[i] = gets.split.map(&:to_i)
    end  
    return mat1
end
mult1(mat1, row_m1)

print "Введите количество строк в матрице 2: "
string_m2 = gets.to_i
print "Введите количество столбцов в матрице 2: "
row_m2 = gets.to_i
puts "Через пробел вводите числа в столбец матрицы 2 (их должно быть #{string_m2}), чтобы ввести следующий столбец, нажмите Enter"
mat2 = Array.new(row_m2) { Array.new(string_m2)}
def mult2(mat2, row_m2)
    for i in 0...row_m2
        mat2[i] = gets.split.map(&:to_i)
    end  
    return mat2
end
mult2(mat2, row_m2) 

def matrix_result(m1, m2) 
 
  raise 'Данные матрицы нельзя перемножить' if m1[0].size != m2.size 
  Array.new(m1.size) do |i| 
    Array.new(m2[0].size) do |j| 
      m2.size.times.inject(0) { |acc, k| acc + m1[i][k] * m2[k][j] } 
    end 
  end 
end 
# matrix_result(mat1, mat2)


puts "Ваша матрица 1 выглядит так:"
output(mat1)

puts "Ваша матрица 2 выглядит так:"
output(mat2)

puts "Получившаяся матрица выглядит так:"
output(matrix_result(mat1, mat2))