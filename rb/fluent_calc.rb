class Calc

  def initialize
    @num = 0
  end

  def four
    @num += 4
  end

  def five
    @num += 5
  end

  def plus
    
  end
end

puts Calc.new.four.plus.five, Calc.new.four.plus.five == 9
# puts Calc.new.five.plus.four, Calc.new.five.plus.four == 9
