class Calculate

  def initialize()
    @result = 0
  end

  def extract_command(command)
    operator, operand = command.split
    if operator == "Add"
      @result = self.add(operand.to_f)
    elsif operator == "Subtract"
      @result = self.subtract(operand.to_f)
    elsif operator == "Multiply"
      @result = self.multiply(operand.to_f)
    else operator == "Divide"
      @result = self.divide(operand.to_f)
    end
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