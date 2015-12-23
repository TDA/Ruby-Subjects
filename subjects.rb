class Subjects
  attr_accessor :name

  def initialize(name)
    self.name = name
  end

  # overriding comparisons
  def >(other)

  end

end

sub1 = Subjects.new("Software Security")
sub2 = Subjects.new("Semantic Web Mining")

puts sub1 > sub2