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
  def first_name
    @first_name
  end
  def last_name
    @last_name
  end
  def active
    @active
  end
end


employee1 = Employee.new("Majora", "Carter", 80000, true)
employee2 = Employee.new("Danilo", "Campos", 70000, true)

employee1.print_info
employee1.give_annual_raise
puts employee1.print_info
puts employee1.first_name
puts employee1.last_name
employee1.active = false
puts employee1.active


class Manager < Employee
  attr_reader :first_name, :last_name, :active
  attr_writer :active
  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end
  def send_report
    puts "Sending email....."
    puts "Email sent!"
  end
end



manager = Manager.new("Sharon","Yitbarek", 100000, "true", [employee1, employee2])

puts manager.print_info
puts manager.send_report