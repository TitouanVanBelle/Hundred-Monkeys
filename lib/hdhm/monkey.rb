# frozen_string_literal: true

module HDHM
  # It's a simple monkey that opens and closes doors
  class Monkey
    attr_reader :name

    def initialize(name: 'Monkey with no name')
      @name = name
    end

    def switch_door(door)
      if door.opened?
        door.close
      else
        door.open
      end
    end
  end
end
