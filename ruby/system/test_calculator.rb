require 'minitest/autorun'
require_relative './calculator'
require_relative './logger'

class TestCalculator < Minitest::Test
  def setup
    @mock_logger = Minitest::Mock.new
    @calculator = Calculator.new(@mock_logger)
  end

  def teardown
    @mock_logger.expect(:log, nil, ["Reset(): result = 0"]) # reset時のログを追加
    @calculator.reset
    @mock_logger.verify
  end

  # 加算メソッドのテスト
  def test_add_to_result
    @mock_logger.expect(:log, nil, ["Add(5): result = 5"])
    @mock_logger.expect(:log, nil, ["Add(3): result = 8"])

    @calculator.add_to_result(5)
    @calculator.add_to_result(3)

    assert_equal 8, @calculator.result
  end

  # 減算メソッドのテスト
  def test_subtract_from_result
    @mock_logger.expect(:log, nil, ["Subtract(3): result = -3"])
    
    @calculator.subtract_from_result(3)

    assert_equal(-3, @calculator.result)
  end

  # 乗算メソッドのテスト
  def test_multiply_by_result
    @mock_logger.expect(:log, nil, ["Multiply(3): result = 0"])
    
    @calculator.multiply_by_result(3)

    assert_equal 0, @calculator.result
  end

  # 除算メソッドのテスト
  def test_divide_by_result
    @mock_logger.expect(:log, nil, ["Divide(2): result = 0"])
    
    @calculator.divide_by_result(2)

    assert_equal 0, @calculator.result
  end

  # ゼロ除算のテスト
  def test_divide_by_zero
    @mock_logger.expect(:log, nil, ["Divide(0): error = division by zero"])
    
    assert_raises(ArgumentError, "division error") { @calculator.divide_by_result(0) }
  end

  # 複雑な計算のテスト
  def test_complex_calculation
    @mock_logger.expect(:log, nil, ["Add(2): result = 2"])
    @mock_logger.expect(:log, nil, ["Multiply(3): result = 6"])
    @mock_logger.expect(:log, nil, ["Subtract(1): result = 5"])
    @mock_logger.expect(:log, nil, ["Divide(2): result = 2"])

    @calculator.add_to_result(2)
    @calculator.multiply_by_result(3)
    @calculator.subtract_from_result(1)
    @calculator.divide_by_result(2)

    assert_equal 2, @calculator.result
  end

  # 負数の乗算のテスト
  def test_multiply_by_negative_number
    @mock_logger.expect(:log, nil, ["Add(-3): result = -3"])
    @mock_logger.expect(:log, nil, ["Multiply(-4): result = 12"])

    @calculator.add_to_result(-3)
    @calculator.multiply_by_result(-4)
    assert_equal 12, @calculator.result
  end

  def test_multiply_and_divide
    @mock_logger.expect(:log, nil, ["Add(10): result = 10"])
    @mock_logger.expect(:log, nil, ["Divide(2): result = 5"])
    @mock_logger.expect(:log, nil, ["Multiply(3): result = 15"])
    @mock_logger.expect(:log, nil, ["Reset(): result = 0"])

    @calculator.add_to_result(10)
    @calculator.divide_by_result(2)
    @calculator.multiply_by_result(3)
    assert_equal 15, @calculator.result
    @calculator.reset()
  end
end
