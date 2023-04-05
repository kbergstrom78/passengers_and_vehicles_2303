class Park
  
  attr_reader :name,
              :admission_price,
              :vehicles_entered


  def initialize(park_info)
    @name = park_info[:name]
    @admission_price = park_info[:admission_price]
    @vehicles_entered = []
  end

  def add_vehicle(vehicle)
    @vehicles_entered << vehicle
  end

  def calculate_revenue
    revenue = 0
    @vehicles_entered.map do |vehicle|
      revenue += vehicle.num_adults * admission_price
    end
    revenue
  end
  
  def visitors
    @vehicles_entered.flat_map { |vehicle| vehicle.passengers}
  end
  
  def list_visitors
    visitors.map { |visitor| visitor.name }.sort
  end

  def list_minors
    visitors.find_all { |visitor| !visitor.adult?}.map do |minor|
      minor
    end.sort_by(&:name)
  end

end