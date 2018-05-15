class School
  attr_reader :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    if @roster[grade] == nil
      @roster[grade] = []
    end
      @roster[grade] << name
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each { |grade, name| name.sort! }
  end
end
