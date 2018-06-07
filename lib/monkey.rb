class Monkey
  attr_reader :name

  def initialize(name = "Monkey with no name")
    @name = name
  end

  def switch_door(door)
    if door.is_opened?
      door.close
    else
      door.open
    end
  end
end
