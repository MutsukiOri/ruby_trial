require_relative 'calc'
require_relative 'logger'

class Calculator
  attr_reader :result

  def initialize(logger)
    @result = 0
    @logger = logger
  end

  def add_to_result(a)
    @result = add(@result, a)
    @logger.log("Add(#{a}): result = #{@result}")
  end

  def subtract_from_result(a)
    @result = subtract(@result, a)
    @logger.log("Subtract(#{a}): result = #{@result}")
  end

  def multiply_by_result(a)
    @result = multiply(@result, a)
    @logger.log("Multiply(#{a}): result = #{@result}")
  end

  def divide_by_result(a)
    begin
      @result = divide(@result, a)
      @logger.log("Divide(#{a}): result = #{@result}")
    rescue ArgumentError
      @logger.log("Divide(#{a}): error = division by zero")
      raise ArgumentError, "division error"
    end
  end

  def reset
    @result = 0
    @logger.log("Reset(): result = 0")
  end
end