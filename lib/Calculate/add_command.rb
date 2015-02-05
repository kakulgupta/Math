class AddCommand

  def initialize(operand)
    @operand = operand
  end

  def execute(calc)
    calc.add(@operand)
  end
  
end