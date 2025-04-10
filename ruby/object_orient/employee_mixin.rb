require_relative 'employee_modules'

class EmployeeMixin
  include EmployeeAttributes

  def initialize(name, department, position, employee_id)
    super
  end
end
