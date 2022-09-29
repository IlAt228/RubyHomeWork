#Вводится баланс
print "Введите Ваш баланс: "
bal = gets.chomp.to_i
#Вводим количество купюр
puts "Сколько купюр в банкомате?"
print "Номиналом '5': "
five = gets.chomp.to_i
print "Номиналом '10': "
ten = gets.chomp.to_i
print "Номиналом '50': "
ft = gets.chomp.to_i
print "Номиналом '100': "
hand = gets.chomp.to_i
input = 1
while input != 4
#Про количество купюр сделал только для того, чтобы самому отслеживать работу банкомата
      print "Введите 0 для просмотра количества купюр.
Введите 1 для просмотра баланса.
Введите 2 для внесения наличных.
Введите 3 для снятия наличных.
Введите 4 для выхода. "
      input = gets.to_i
   if input == 0
      puts "В банкомате находится:
#{five} купюр номиналом '5'
#{ten} купюр номиналом '10'
#{ft} купюр номиналом '50'
#{hand} купюр номиналом '100'"
   end
   if input == 1 
      puts "Ваш баланс #{bal}."
   end 
   if input == 2
      print "Сколько хотите внести? "
      z = gets.to_i
      bal += z
      puts "Ваш баланс #{bal}."
   end
   if input == 3
      print "Сколько хотите снять? (введите число, кратное 5): " 
      x = gets.to_i
      while x % 5 != 0
           if x % 5 != 0
               puts "Ошибка."
               print "Сколько хотите снять? (введите число, кратное 5): " 
               x = gets.to_i
           end
       end 
       if x % 5 == 0 && bal >= x
           while x >= 100 && hand > 0          
                d = x / 100
                while hand - d < 0
                    d -= 1
                end
                if hand - d >= 0
                    hand -= d 
                    bal -= d * 100
                    x -= d * 100  
                end               
           end
           while x >= 50 && ft > 0
                fx = x / 50
                while ft - fx < 0
                    fx -= 1
                end
                if ft - fx >= 0
                    ft -= fx
                    bal -= fx * 50
                    x -= fx * 50 
                end
            end
            while x >= 10 && ten > 0
                t = x / 10
                while ten - t < 0
                    t -=1
                end
                if ten - t >= 0
                    ten -= t
                    bal -= t * 10
                    x -= t * 10 
                end
            end
            while x >= 5 && five > 0
                f = x / 5 
                while five - f < 0
                    f -= 1
                end
                if five - f >= 0
                    five -= f
                    bal -= f * 5
                    x -= f * 5 
                end
            end
            if x > 0
                bal += f * 5
                bal += t * 10
                bal += fx * 50
                bal += d * 100
                five += f
                ten += t 
                ft += fx
                hand += d
                puts "В банкомате недостаточно купюр."
            end
            puts "Ваш баланс #{bal}." 
       elsif x % 5 == 0 && bal < x 
           puts "На балансе недостаточно средств."
       end  
   end
   if input < 0
      puts "Ошибка."
   elsif input > 4
      puts "Ошибка."
   end 
end