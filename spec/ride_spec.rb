require './lib/ride'


RSpec.describe Ride do
  it 'exists' do
    ride = Ride.new({name: 'Ferris Wheel', cost: 0})

    expect(ride).to be_instance_of(Ride)
  end

  it "can have attributes" do
    ride = Ride.new({name: 'Ferris Wheel', cost: 0})
    
    expect(premier.name).to eq("Ferris Wheel")
    expect(premier.cost).to eq(0)
  end
end