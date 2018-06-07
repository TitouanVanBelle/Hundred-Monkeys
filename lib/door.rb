class Door
  def initialize(opened = false)
    @opened = opened
  end

  def open
    @opened = true
  end

  def close
    @opened = false
  end

  def is_opened?
    @opened
  end
end
