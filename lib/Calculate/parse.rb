#Splits given command into operator and operand and then performs operation
class Parse

  def parsing(command_string)
    @operation = command_string.split
    @operation[1] = @operation[1].to_f
    if @operation[0] == "add"
      @command = AddCommand.new(@operation[1])
    elsif @operation[0] == "subtract"
      @command = SubCommand.new(@operation[1])
    elsif @operation[0] == "multiply"
      @command = MulCommand.new(@operation[1])
    elsif @operation[0] == "divide"
      @command = DivCommand.new(@operation[1])
    end
    return @command
  end

end
