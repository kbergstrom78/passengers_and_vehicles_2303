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

end