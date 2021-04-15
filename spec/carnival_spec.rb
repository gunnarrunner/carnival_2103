require './lib/ride'
require './lib/attendee'
require './lib/carnival'



RSpec.describe Carnival do
  it 'exists' do
    jeffco_fair = Carnival.new("Jefferson County Fair")

    expect(carnival).to be_instance_of(Carnival)
  end

  it 'can have attributes' do
    jeffco_fair = Carnival.new("Jefferson County Fair")
    
    expect(carnival.name).to eq("Jefferson County Fair")
    expect(carnival.rides).to eq([])
  end
end