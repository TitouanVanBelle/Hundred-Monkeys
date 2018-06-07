# frozen_string_literal: true

require_relative './hdhm/door'
require_relative './hdhm/monkey'

# The hundred doors and the hundred monkeys
module HDHM
  def self.opened_doors(door_monkey_count: 100)
    monkeys = []
    doors = []

    door_monkey_count.times do
      monkeys << HDHM::Monkey.new
      doors << HDHM::Door.new
    end

    monkeys.each_with_index do |monkey, monkey_index|
      monkey_index += 1
      doors.each_with_index do |door, door_index|
        door_index += 1

        if (door_index % monkey_index).zero?
          # puts "Monkey #{monkey_index} #{door.opened? ? 'closes' : 'opens'} door #{door_index}"
          monkey.switch_door(door)
        end
      end
    end

    doors.each_with_index.map { |door, i| door.opened? ? i + 1 : nil }.compact
  end
end
