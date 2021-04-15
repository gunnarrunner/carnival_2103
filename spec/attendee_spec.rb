require './lib/ride'
require './lib/attendee'


RSpec.describe Attendee do
  it 'exists' do
    attendee = Attendee.new('Bob', 20)

    expect(attendee).to be_instance_of(Attendee)
  end

  it "can have attributes" do
    attendee = Attendee.new('Bob', 20)
    
    expect(attendee.name).to eq('Bob')
    expect(attendee.cost).to eq(20)
    expect(attendee.interests).to eq([])
  end
end