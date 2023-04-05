class Passenger

  attr_accessor :name,
                :age,
                :driver

  def initialize(passenger_info)
    @name = passenger_info["name"]
    @age = passenger_info["age"]
    @driver = false

  end

  def adult?
    @age >= 18
  end

  def driver?
    @driver
  end

  def drive
    @driver = true
  end
end