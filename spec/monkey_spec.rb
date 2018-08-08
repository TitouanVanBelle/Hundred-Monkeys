# spec/monkey_spec.rb

require_relative '../lib/monkey'

describe Monkey do
  it 'monkey switches an intialized door' do
    monkey = Monkey.new
    door = Door.new
    monkey.switchDoor(door)
    expect(door.state).to eql(true)
  end

  it 'monkey switches an open door' do
    monkey = Monkey.new
    door = Door.new
    door.open()
    monkey.switchDoor(door)
    expect(door.state).to eql(false)
  end

  it 'monkey switches a close door' do
    monkey = Monkey.new
    door = Door.new
    door.open()
    door.close()
    monkey.switchDoor(door)
    expect(door.state).to eql(true)
  end
end
