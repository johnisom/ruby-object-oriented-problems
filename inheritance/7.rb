# Exercise 7

class Student
  attr_reader :name

  protected

  attr_accessor :grade
  attr_writer :name

  public

  def initialize(name, grade)
    self.name = name
    self.grade = grade
  end

  def better_grade_than?(other)
    grade > other.grade
  end
end
