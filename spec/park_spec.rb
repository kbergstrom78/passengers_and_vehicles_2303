require './lib/park'
require './lib/vehicle'
require './lib/passenger'

RSpec.describe Park do
  
  it 'is initialized' do
    park = Park.new({name: "Acadia", admission_price: 20})
    
    expect(park).to be_an_instance_of(Park)
  end

  it 'has attributes' do
    park = Park.new({name: "Acadia", admission_price: 20})

    expect(park.name).to eq("Acadia")
    expect(park.admission_price).to eq(20)
  end

  it 'has visitors' do
    park = Park.new({name: "Acadia", admission_price: 20})

    expect(park.vehicles_entered).to eq([])
  end

  it 'admits visitors' do
    park = Park.new({name: "Acadia", admission_price: 20})
    vehicle = Vehicle.new("2001", "Honda", "Civic")  

    park.admit_vehicle(vehicle)

    expect(park.vehicles_entered).to eq([vehicle])
  end


  it 'can list visitors' do
    park = Park.new({name: "Acadia", admission_price: 20})
    vehicle = Vehicle.new("2001", "Honda", "Civic")  
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    vehicle.add_passenger(charlie)
    vehicle.add_passenger(jude)
    vehicle.add_passenger(taylor)

    park.admit_vehicle(vehicle)

    expect(park.list_visitors).to eq(["Charlie", "Jude", "Taylor"])
  end

  it 'calculates revenue' do
    park = Park.new({name: "Acadia", admission_price: 20})
    
    vehicle_1 = Vehicle.new("2001", "Honda", "Civic")  
    vehicle_2 = Vehicle.new("2018", "GMC", "Sierra")
    
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    chaco = Passenger.new({"name" => "Chaco", "age" => 35})
    kila = Passenger.new({"name" => "Kila", "age" => 7})
  
    vehicle_1.add_passenger(charlie)
    vehicle_1.add_passenger(jude)
    vehicle_1.add_passenger(taylor)

    vehicle_2.add_passenger(chaco)
    vehicle_2.add_passenger(kila)

    park.admit_vehicle(vehicle_1)
    park.admit_vehicle(vehicle_2)

    expect(park.calculate_revenue).to eq(60)

  
  end


end