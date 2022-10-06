def mulMat(mat1, mat2, r1, r2, c1, c2)
    # List to store matrix multiplication result
    rslt  = Array.new(r1) { Array.new(c2) {0}}
  
    (0..r1-1).each do |i|
       (0..c2-1).each do |j|
          (0..r2-1).each do |k|
              rslt[i][j] += mat1[i][k] * mat2[k][j]
          end
        end
      end
    return rslt
    end
  
  
  n1 = gets.to_i
  m1 = gets.to_i
  mata = Array.new(n1) { Array.new(m1)}
  (0..n1-1).each do |i|
    (0..m1-1).each do |j|
      mata[i][j] = gets.chomp.to_i
    end
  end
  n2 = gets.to_i
  m2 = gets.to_i
  matb = Array.new(n2) { Array.new(m2)}
  (0..n2-1).each do |i|
    (0..m2-1).each do |j|
      matb[i][j] = gets.chomp.to_i
    end
  end
  print(mulMat(mata,matb,n1,n2,m1,m2))