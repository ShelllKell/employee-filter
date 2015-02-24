class EmployeeFilter

  def initialize(employee)
    @employee = employee
  end


  def started_before_2006
    @employee.select { |employee| employee[:start_date].year < 2006}
  end

  def all_with_start_date
    @employee.map do |employee|
      "#{employee[:first_name]} #{employee[:last_name]} (#{employee[:title]}) - #{format_time(employee[:start_date])}"
    end
  end

  def format_time(date_object)
    "#{date_object.month}/#{date_object.day}/#{date_object.year}"
  end

end
