class EmployeeFilter

  def initialize(employees)
    @employees = employees
  end

  def display_time

    "#{date.month}/#{date.day}/#{date.year}"
  end

  def started_before_2006
    # @employees.each { |date| date[:start_date][0] }.to_s

    # [beaulah]




    # beaulah = []
    # beaulah = @employees[0]



  end

  def all_with_start_date
    # ["Beaulah Thompson (Lead Security Facilitator) - 2/9/2005", "Benny Walker (National Research Officer) - 6/23/2006"]

  info = []
  @employees.each do |employee_hash|
    first = employee_hash[:first_name]
    last = employee_hash[:last_name]
    title = employee_hash[:title]
    start_date = employee_hash[:start_date].display_time
    info << "#{first} #{last} #{title} - #{start_date}"
  end
  info
  end




    # employees[0][:first_name][:last_name]



end