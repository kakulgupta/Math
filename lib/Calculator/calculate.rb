#Performs basic calculator operations
class Calculate

  def initialize()
    @result = 0
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

end