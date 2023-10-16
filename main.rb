class Student
  MAX_COURSES = 5

  def get_course_list(schedule, quarter_id)
    quarter = schedule.quarter[quarter_id]
    quarter.course_list
  end
  def remove_from_schedule(course, schedule, quarter_id)
    course_list = get_course_list(schedule, quarter_id)
    course_list.remove(course)
  end

  def add_to_schedule(course, schedule, quarter_id)
    course_list = get_course_list(schedule, quarter_id)
    max_courses = course_list.maximum_number_of_courses
    if max_courses < MAX_COURSES
      course_list.add(course)
    end
  end
end
