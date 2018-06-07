require_relative '../lib/monkey'

describe Monkey do
  it 'is initialized with a name' do
    name = 'Booboo'
    monkey = Monkey.new(name: name)

    expect(monkey.name).to eq 'Booboo'
  end

  describe 'switch' do
    context 'the door is initially opened' do
      it 'closes the door' do
        monkey = Monkey.new
        door = Door.new(opened: true)

        monkey.switch_door(door: door)

        expect(door.is_opened?).to be false
      end
    end

    context 'the door is initially closed' do
      it 'closes the door' do
        monkey = Monkey.new
        door = Door.new(opened: false)

        monkey.switch_door(door: door)

        expect(door.is_opened?).to be true
      end
    end
  end
end
