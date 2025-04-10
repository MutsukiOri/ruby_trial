require 'pp'

class BaseballTeam
  attr_accessor :name, :win, :lose, :draw

  def initialize(name, win, lose, draw)
    @name = name
    @win = win
    @lose = lose
    @draw = draw
  end

  def get_rate
    return @win.to_f / (@win + @lose)
  end

  def report
    printf "%-10s %3d %4d %4d %5.3f\n", @name, @win, @lose, @draw, get_rate
  end
end

puts "%-10s %3s %4s %4s %4s" % ["team", "win", "lose", "draw", "rate"]
# puts "%-10s %3s %4s %4s %5s" % ["-" * 10, "-" * 3, "-" * 4, "-" * 4, "-" * 5]

team_a = BaseballTeam.new("Archers", 77, 64, 2)
team_m = BaseballTeam.new("Meteors", 71, 69, 3)
team_c = BaseballTeam.new("Cheetahs", 69, 68, 6)
team_s = BaseballTeam.new("Sharks", 70, 70, 3)
team_p = BaseballTeam.new("Pythons", 68, 73, 2)
team_o = BaseballTeam.new("Owls", 59, 82, 2)

team_a.report
team_m.report
team_c.report
team_s.report
team_p.report
team_o.report
  
