require 'minitest/autorun'
require_relative './calc'

class TestCalc < Minitest::Test
  # 加算メソッド add のテスト
  def test_add
    result = add(2, 3)
    assert_equal 5, result
  end
end