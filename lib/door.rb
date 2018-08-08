class Door
  def initialize()
    @state = false
  end
  attr_reader :state

  def open
    @state = true
  end

  def close
    @state = false
  end
end
