class SubCommand

  def initialize(operand)
    @operand = operand
  end

  def execute(calc)
    calc.subtract(@operand)
  end
  
end