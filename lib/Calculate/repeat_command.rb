class RepeatCommand

  def initialize(operand, history)
    @operand = operand
    @history = history
  end
  
  def execute(calc)
    result = nil
    index = @history.length - @operand
    while index < @history.length
      result = @history[index].execute(calc)
      index += 1
    end
    return result
  end
  
end