class Subjects
  attr_accessor :name
  # any name starting with a Caps is considered
  # constant by ruby
  # By convention, all caps is preferred
  SUBJECT_POINTS = {
      "Software Security" => 5,
      "Semantic Web Mining" => 4
  }

  def initialize(name)
    self.name = name
  end

  # overriding comparisons
  def >(other)
    SUBJECT_POINTS[self.name] > SUBJECT_POINTS[other.name]
  end

end

sub1 = Subjects.new("Software Security")
sub2 = Subjects.new("Semantic Web Mining")

puts sub1 > sub2