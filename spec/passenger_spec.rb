require './lib/passenger'

RSpec.describe Passenger do

  it 'is initialized' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie).to be_an_instance_of(Passenger)
  end

  it 'has attributes' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie.name).to eq("Charlie")
    expect(charlie.age).to eq(18)
  end

  it 'defines an adult' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie.adult?).to eq(true)
    expect(taylor.adult?).to eq(false)
  end

  it 'defines a driver' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie.driver?).to eq(false)
    
    charlie.drive
    
    expect(charlie.driver?).to eq(true)  
  end


end