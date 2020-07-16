class School
  attr_accessor :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(name, grade)
    @roster.include?(grade) ? @roster[grade] << name : @roster[grade] = [name]

    # if @roster.include?(grade)
    #   @roster[grade] << name
    # else
    #   @roster[grade] = [name]
    # end
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    @roster.each{|grade, name| @roster[grade] = name.sort}
  end
end
