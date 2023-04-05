require './lib/passenger'

RSpec.describe Passenger do

  it 'is initialized' do
    
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie).to be_an_instance_of(Passenger)
  end






end