module EmployeeAttributes
  attr_accessor :name, :department, :position, :employee_id

  def initialize(name, department, position, employee_id)
    @name = name
    @department = department
    @position = position
    @employee_id = employee_id
  end

  def report(times = 1)
    puts "#{times}回目の報告をします。役職：#{@position}、名前：#{@name}"
  end

  def join_meeting
    @department.meeting
    puts "→上記の会議に参加します。部署：#{@department.name} 名前：#{@name}"
  end
end

module SoftwareDevelopment
  attr_accessor :programming_language

  def develop_software
    puts "ソフトウェアを開発します。名前：#{@name}、プログラミング言語：#{@programming_language}"
  end

  def join_meeting
    super
    puts "→技術的な準備を行い、上記の会議に参加します。名前：#{@name}"
  end
end

module Designable
  attr_accessor :tool

  def design
    puts "#{@name}はグラフィックデザインを行います。使用ツール: #{@tool}"
  end
end
