class School
  attr_reader :start_time,
              :hours_in_school_day,
              :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(student)
    @student_names << student
  end

  def end_time
    (@start_time.to_i + hours_in_school_day).to_s + ":00"
  end

  def is_full_time?
    hours_in_school_day > 4
  end

  def standard_student_names
    @student_names.map {|student| student.capitalize}
  end

  def convert_end_time_to_clock_time
    integer_time = end_time.to_i
    if integer_time > 12
      (integer_time - 12).to_s + ":00"
    else
      end_time
    end
  end
end