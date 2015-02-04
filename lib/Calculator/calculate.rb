#Performs basic calculator operations
class Calculate

  def initialize(value = 0)
    @result = value.to_f
  end

  def add(value)
    @result = @result + value
  end

  def subtract(value)
    @result = @result - value
  end

  def multiply(value)
    @result = @result * value
  end

  def divide(value)
    @result = @result / value
  end

  def absolute
    @result = @result.abs
  end

  def negate
    @result = @result *(-1)
  end

  def sqrt
    @result = Math.sqrt(@result)
  end

  def square
    @result = (@result * @result)
  end

  def cuberoot
    @result = Math.cbrt(@result)
  end

  def cube
    @result = (@result * @result * @result)
  end

end