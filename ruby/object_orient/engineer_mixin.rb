require_relative 'employee_modules'

class EngineerMixin
  include EmployeeAttributes
  include SoftwareDevelopment

  def initialize(name, department, position, employee_id, programming_language)
    super(name, department, position, employee_id)
    @programming_language = programming_language
  end
end

test = EngineerMixin.new("田中", "開発部", "一般社員", 123, "Ruby")
test.develop_software

p test
