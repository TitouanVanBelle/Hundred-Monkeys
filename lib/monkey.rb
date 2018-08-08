class Monkey
  def switchDoor
    if (door.state == false)
      door.open()
    else
      door.close()
    end
  end
end
