# frozen_string_literal: true

require_relative '../lib/hdhm'

describe Monkey do
  it 'is initialized with a name' do
    name = 'Booboo'
    monkey = HDHM::Monkey.new(name: name)

    expect(monkey.name).to eq 'Booboo'
  end

  describe 'switch' do
    context 'the door is initially opened' do
      it 'closes the door' do
        monkey = HDHM::Monkey.new
        door = HDHM::Door.new(opened: true)

        monkey.switch_door(door: door)

        expect(door.opened?).to be false
      end
    end

    context 'the door is initially closed' do
      it 'closes the door' do
        monkey = HDHM::Monkey.new
        door = HDHM::Door.new(opened: false)

        monkey.switch_door(door: door)

        expect(door.opened?).to be true
      end
    end
  end
end
