#encoding: utf-8

class RecursComp
  def compile(str)
    @str,@index = str,0
    compileF
  end
  
  private

  def compileF
    compileT
    compileM
    return if @index >= @str.length
    cur = @str[@index].chr
    if cur == '+' or cur == '-'
      @index += 1
      compileF
      print "#{cur} "
    end
  end
  def compileT
    compileK
    compileM
    return if @index >= @str.length
    cur = @str[@index].chr
    if cur == '*' or cur == '/' or cur == '%'
      @index += 1
      compileT
      print "#{cur} "
    end
  end
  def compileM
    return if @index + 1 >= @str.length
    if @str[@index].chr + @str[@index + 1].chr == '/*'
      @index += 2
      while @str[@index].chr + @str[@index + 1].chr != '*/'
        @index += 1
      end
    @index += 2
    elsif @str[@index].chr + @str[@index + 1].chr == '//'
      # while @index < @str.length
      #   @index += 1
      # end
      @index += 2
      return
    end
  end
  def compileK
    compileM
    return if @index >= @str.length
    if @str[@index].chr == '(' or @str[@index].chr == '[' or @str[@index].chr == ' '
      @index += 1
      compileF
      @index += 1
    else
      compileV
    end
  end
  def compileV
    compileM
    return if @index >= @str.length
    print "#{@str[@index].chr} "
    @index += 1
    return if @index >= @str.length
    if @str[@index].chr == ' '
      @index += 1
    end
  end
end

c = RecursComp.new
# while true
  print "Введите формулу: "
  c.compile(readline.chomp)
  print "\n"
# end

