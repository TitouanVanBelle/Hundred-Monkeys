# spec/door_spec.rb

require_relative '../lib/door'

describe Door do
  it 'open the door' do
    door = Door.new
    expect(door.state).to eql(false)
    door.open()
    expect(door.state).to eql(true)
  end

  it 'close the door' do
    door = Door.new
    door.open()
    door.close()
    expect(door.state).to eql(false)
  end
end
