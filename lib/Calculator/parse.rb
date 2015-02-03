#Splits given command into operator and operand and then performs operation
class Parse
  attr_reader :operation

  def initialize
    @operation = Calculate.new
  end

  def parsing(command)
    operator, operand = command.split

    if operator == "Add"
      @result = operation.add(operand.to_f)
    elsif operator == "Subtract"
      @result = operation.subtract(operand.to_f)
    elsif operator == "Multiply"
      @result = operation.multiply(operand.to_f)
    elsif operator == "Divide"
      @result = operation.divide(operand.to_f)
    elsif operator == "Cancel"
      @result = 0 
    end

  end

end
