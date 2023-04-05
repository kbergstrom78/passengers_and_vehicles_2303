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



end