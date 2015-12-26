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


  # overriding the spaceship operator
  # basically a compareTo method ala Java
  def <=>(other)
    # if SUBJECT_POINTS[self.name] > SUBJECT_POINTS[other.name]
    #   return 1
    # elsif SUBJECT_POINTS[self.name] < SUBJECT_POINTS[other.name]
    #   return -1
    # else
    #   return 0
    # end
    # shorter way to do this :O WOW! just tell which
    # things(quantities) to compare, and rubys comparable does it for you
    # so as long as the quantities you want to compare are builtin ones,
    # just call <=> straight instead of doing the if..elsif..else
    SUBJECT_POINTS[self.name] <=> SUBJECT_POINTS[other.name]
  end

end

sub1 = Subjects.new("Software Security")
sub2 = Subjects.new("Semantic Web Mining")

puts sub1 == sub2
puts sub1 <= sub2
puts sub1 >= sub2
puts sub1 > sub2
puts sub1 < sub2


puts 'cat'.between?('ant', 'dog')   #=> true