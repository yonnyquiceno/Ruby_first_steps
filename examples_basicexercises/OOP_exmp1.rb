require 'date'

class Vehicle
  attr_accessor :color, :wheels, :turned_on, :motor, :max_velocity, :current_velocity

  def initialize(color, wheels, motor, max_velocity)
    @color = color
    @wheels = wheels
    @motor = motor
    @max_velocity = max_velocity
    @current_velocity = 0
    @turned_on = false
  end

  def turn_on
    @turned_on = true
    puts "#{self.class} is turned on" if @turned_on
    @turned_on
  end

  def turn_off
    @turned_on = false
    puts "#{self.class} is turned off" unless @turned_on
    @turned_on
  end
end

class Employee
  # Encapsulation is achieved when the instance variables are private
  # to an object and you have public getters and setters (in Ruby,
  # we call them attribute readers and attribute writers).
  # attr_accessor :name
  # For creating writer methods
  # attr_writer :name
  # For creating RW methods

  attr_accessor :name, :role, :salary, :hire_date, :quit_date

  def initialize(name, role, salary, hire_date, quit_date)
    @name = name
    @role = role
    @salary = salary
    @hire_date = hire_date
    @quit_date = quit_date
  end

  # Métodos públicos, accesible desde afuera
  # de la clase.
  def quit
    @quit_date = Date.today
  end

  def get_clean
    take_a_bath
    go_to_the_bathroom
    wash_mouth
  end

  # Métodos privados, solo accesibles
  # internamente desde la clase.
  def take_a_bath
    "I took a bath"
  end
  private :take_a_bath

  def go_to_the_bathroom
    puts "I went to the bathroom"
  end
  private :go_to_the_bathroom

  def wash_mouth
    "I washed my mouth and brushed my teeth"
  end
  private :go_to_the_bathroom
end
