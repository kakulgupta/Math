#Splits given command into operator and operand and then performs operation
class Parse

  def initialize
    @history = []
  end

  def parsing(command_string)
    operation = command_string.split
    operation[1] = operation[1].to_f

    if operation[0] == "add"
      result = AddCommand.new(operation[1])
      @history.push(result)
    elsif operation[0] == "subtract"
      result = SubCommand.new(operation[1])
      @history.push(result)
    elsif operation[0] == "multiply"
      result = MulCommand.new(operation[1])
      @history.push(result)
    elsif operation[0] == "divide"
      result = DivCommand.new(operation[1])
      @history.push(result)
    elsif operation[0] == "square"
      result = SquareCommand.new
      @history.push(result)
    elsif operation[0] == "squareroot"
      result = SquareRootCommand.new
      @history.push(result)
    elsif operation[0] == "cube"
      result = CubeCommand.new
      @history.push(result)
    elsif operation[0] == "cuberoot"
      result = CubeRootCommand.new
      @history.push(result)
    elsif operation[0] == "negate"
      result = NegateCommand.new
      @history.push(result)
    elsif operation[0] == "absolute"
      result = AbsoluteCommand.new
      @history.push(result)
    elsif operation[0] == "cancel"
      result = CancelCommand.new
    elsif operation[0] == "repeat"
      result = RepeatCommand.new(operation[1], @history)
    end

    return result
  end

end
