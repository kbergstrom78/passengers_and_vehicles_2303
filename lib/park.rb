class Park
  
  attr_reader :name,
              :admission_price,
              :vehicles_entered


  def initialize(park_info)
    @name = park_info[:name]
    @admission_price = park_info[:admission_price]
    @vehicles_entered = []
  end

  def admit_vehicle(vehicle)
    @vehicles_entered << vehicle
  end

  def visitors
    @vehicles_entered.flat_map { |vehicle| vehicle.passengers}
  end

  def list_visitors
    visitors.map { |visitor| visitor.name }.sort
  end

end