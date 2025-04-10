# frozen_string_literal: true

# Employee class represents an employee with basic information and reporting functionality
class Employee
  # attr_accessorでゲッター/セッターを定義できる
  attr_accessor :name, :department, :position, :employee_id

  # initializeメソッド
  def initialize(name, department, position, employee_id)
    @name = name
    @department = department
    @position = position
    @employee_id = employee_id
  end

  # 報告メソッド
  def report(times = 1)
    puts "#{times}回目の報告をします。役職：#{@position}、名前：#{@name}"
  end

  def join_meeting
    @department.meeting
    puts "会議に参加します。部署：#{@department.name}、名前：#{@name}"
  end
end