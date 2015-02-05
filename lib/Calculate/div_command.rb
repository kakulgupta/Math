class DivCommand

  def initialize(operand)
    @operand = operand
  end

  def execute(calc)
    calc.divide(@operand)
  end
  
end