class Bootcamp
  attr_accessor :name, :slogan, :student_capacity, :teachers, :students, :grades

  def initialize(name, slogan, student_capacity)
    @name = name
    @slogan = slogan
    @student_capacity = student_capacity
    @teachers = []
    @students = []
    @grades = Hash.new { [] }
  end

  def hire(teacher)
    teachers << teacher
  end

  def enroll(student)
    if student_capacity > students.length
      students << student
      return true
    else
      return false
    end
  end

  def enrolled?(student)
    students.include?(student)
  end

  def student_to_teacher_ratio
    students.length / teachers.length
  end

  def add_grade(student, grade)
    if enrolled?(student)
      grades[student] = grades[student] << grade
      return true
    end
    return false
  end

  def num_grades(student)
    grades[student].length
  end

  def average_grade(student)
    return if !enrolled?(student) || grades[student].length == 0
    grades[student].sum / grades[student].length
  end
end
