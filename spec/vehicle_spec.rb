require './lib/vehicle'
require './lib/passenger'

RSpec.describe Vehicle do

  it 'is initialized' do
    vehicle = Vehicle.new("2001", "Honda", "Civic")   

    expect(vehicle).to be_an_instance_of(Vehicle)
  end
end