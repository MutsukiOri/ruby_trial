require_relative 'employee_modules'

class DesignerMixin
  include EmployeeAttributes
  include Designable

  def initialize(name, department, position, employee_id, tool)
    super(name, department, position, employee_id)
    @tool = tool
  end
end