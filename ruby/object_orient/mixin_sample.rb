require_relative 'department'
require_relative 'employee_mixin'
require_relative 'engineer_mixin'
require_relative 'designer_mixin'

# 共通処理を定義
def report_meeting(person)
  person.report
  person.join_meeting
  # もし develop_software メソッドがあれば呼び出す
  if person.respond_to?(:develop_software)
    person.develop_software
  end
  # もし design メソッドがあれば呼び出す
  if person.respond_to?(:design)
    person.design
  end
end

# インスタンスの作成
department = Department.new("営業部", "xx", 1_000_000)
employee   = EmployeeMixin.new("鈴木", department, "課長", 100)

# インスタンスの作成
dev_department = Department.new("開発部", "yy", 0)
engineer = EngineerMixin.new("田中", dev_department, "一般社員", 88, "Ruby")

# インスタンスの作成
design_department = Department.new("デザイン部", "zz", 100)
designer = DesignerMixin.new("植野", design_department, "デザイナー", 66, "Photoshop")

# 共通処理の呼び出し
report_meeting(employee)
puts ""
report_meeting(engineer)
puts ""
report_meeting(designer)