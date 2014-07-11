class EmployeeFilter

  def initialize(employees)
    @employees = employees
  end


  def started_before_2006

    @employees.select { |employee_hash| employee_hash[:start_date].year < 2006 }



  end

  def all_with_start_date

    @employees.map do |employee_hash|
      "#{employee_hash[:first_name]} #{employee_hash[:last_name]} (#{employee_hash[:title]}) - #{format_time(employee_hash[:start_date])}"
    end
  end

  private

  def format_time(date_object)

    "#{date_object.month}/#{date_object.day}/#{date_object.year}"

  end



  #
  # info = []
  # @employees.each do |employee_hash|
  #   first = employee_hash[:first_name]
  #   last = employee_hash[:last_name]
  #   title = employee_hash[:title]
  #   start_date = employee_hash[:start_date].display_time
  #   info << "#{first} #{last} #{title} - #{start_date}"
  # end
  # info

end