class School
  attr_accessor :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    @roster[grade] = [] if @roster.include?(grade) == false
    @roster[grade] << student
  end

	def grade(grade)
		@roster[grade]
	end

  def sort
    @roster.each {|grade, names| @roster[grade] = names.sort}
  end

end
