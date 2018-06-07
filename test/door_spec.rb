require_relative '../lib/door'


describe Door do
  it 'is closed when initialized' do
    door = Door.new
    expect(door.is_opened?).to be false
  end

  context 'door is initialized opened' do
    it 'is open when initialized' do
      door = Door.new(opened: true)
      expect(door.is_opened?).to be true
    end
  end

  describe 'close' do
    it 'closes the door' do
      door = Door.new(opened: true)
      door.close
      expect(door.is_opened?).to be false
    end
  end

  describe 'open' do
    it 'opens the door' do
      door = Door.new
      door.open
      expect(door.is_opened?).to be true
    end
  end
end
