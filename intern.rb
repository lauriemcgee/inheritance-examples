class Employee
  attr_reader :first_name, :last_name, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end


class Intern < Employee
  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end
end

intern = Intern.new(first_name: "Adirenne", last_name: "Lowe", salary: 50000, active: true)

intern.print_info
intern.send_report