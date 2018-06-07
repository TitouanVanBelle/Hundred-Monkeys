# frozen_string_literal: true

require_relative '../lib/hdhm'

describe Door do
  it 'is closed when initialized' do
    door = HDHM::Door.new
    expect(door.opened?).to be false
  end

  context 'door is initialized opened' do
    it 'is open when initialized' do
      door = HDHM::Door.new(opened: true)
      expect(door.opened?).to be true
    end
  end

  describe 'close' do
    it 'closes the door' do
      door = HDHM::Door.new(opened: true)
      door.close
      expect(door.opened?).to be false
    end
  end

  describe 'open' do
    it 'opens the door' do
      door = HDHM::Door.new
      door.open
      expect(door.opened?).to be true
    end
  end
end
