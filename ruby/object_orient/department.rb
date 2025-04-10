
class Department
  # initializeメソッド
  def initialize(name, department_id, budget)
    # インスタンス変数（フィールド）
    @name = name
    @department_id = department_id
    @budget = budget
  end

  # 会議を開催する
  def meeting
    puts "部内会議を開催します。部署：#{@name}、予算：#{@budget}"
  end

  # nameのgetter
  def name
    @name
  end

  # budgetのgetter
  def budget
    @budget
  end

  # budgetのsetter
  def budget=(new_budget)
    if new_budget < 0
      raise ArgumentError, "予算はマイナスにできません。"
    end
    @budget = new_budget
  end
end