class MulCommand

  def initialize(operand)
    @operand = operand
  end

  def execute(calc)
    calc.multiply(@operand)
  end
  
end