class StudentSchedule
  def initialize(quarter, classes, year)
    @quarter = quarter
    @year = year
    @classes = classes
    @num_classes = @classes.length
  end

  def self.num_classes
    @num_classes
  end

  def remove(course)
    @classes.each do |i|
      if course[i] == course
        @classes.delete_at(i)
      end
    end
  end

  def add(course)
    @classes.push(course)
  end

end


class Student
  MAX_COURSES = 5

  def initialize
    @schedule = StudentSchedule.new(1, 2023, [])
  end

  def remove_from_schedule(course)
    @schedule.remove(course)
  end

  def add_to_schedule(course)
    if @schedule.num_classes < MAX_COURSES
      @schedule.add(course)
    end
  end

end
