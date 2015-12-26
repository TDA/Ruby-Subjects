class Subjects
  attr_accessor :name
  # any name starting with a Caps is considered
  # constant by ruby
  # By convention, all caps is preferred
  SUBJECT_POINTS = {
      "Software Security" => 5,
      "Semantic Web Mining" => 4,
      "CPS" => 0
  }

  # mixin Comparable
  include Comparable
  def initialize(name)
    self.name = name
  end

  # # overriding comparisons
  # def >(other)
  #   SUBJECT_POINTS[self.name] > SUBJECT_POINTS[other.name]
  # end

  def <=>(other)
    if SUBJECT_POINTS[self.name] > SUBJECT_POINTS[other.name]
      return 1
    elsif SUBJECT_POINTS[self.name] < SUBJECT_POINTS[other.name]
      return -1
    else
      return 0
    end
  end

  # overriding the spaceship operator
  # basically a compareTo method ala Java


end

sub1 = Subjects.new("Software Security")
sub2 = Subjects.new("Semantic Web Mining")

puts sub1 == sub2
puts sub1 <= sub2
puts sub1 >= sub2
puts sub1 > sub2
puts sub1 < sub2