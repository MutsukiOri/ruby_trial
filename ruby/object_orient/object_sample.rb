require_relative 'department'
require_relative 'employee'
require_relative 'engineer'

# インスタンスの作成
department = Department.new("営業部", "xx", 1_000_000)
employee   = Employee.new("鈴木", department, "課長", 100)

# インスタンスメソッドの呼び出し
employee.report
# employee.report(2)
employee.join_meeting

# 1行空ける
puts ""

# インスタンスの作成
dev_department = Department.new("開発部", "yy", 0)
# engineer = Employee.new("田中", dev_department, "一般社員", 88)
engineer = Engineer.new("田中", dev_department, "一般社員", 88, "Ruby")

# インスタンスメソッドの呼び出し
engineer.report
engineer.join_meeting
engineer.develop_software