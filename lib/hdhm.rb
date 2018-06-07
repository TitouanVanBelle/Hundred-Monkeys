# frozen_string_literal: true
require 'byebug'
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

    algorithm_a(doors, monkeys)

    doors.each_with_index.map { |door, i| door.opened? ? i + 1 : nil }.compact
  end

  def self.algorithm_a(doors, monkeys)
    monkeys.each_with_index do |monkey, monkey_index|
      monkey_index += 1
      doors.each_with_index do |door, door_index|
        door_index += 1

        if (door_index % monkey_index).zero?
          monkey.switch_door(door)
        end
      end
    end
  end

  def self.algorithm_b(doors, monkeys)
    monkeys.each_with_index do |monkey, monkey_index|
      one_indexed_monkey_index = monkey_index + 1

      if monkey_index > (doors.count / 2)
        monkey.switch_door(doors[monkey_index])
        next
      end

      doors.each_with_index do |door, door_index|
        door_index += 1

        if (door_index % one_indexed_monkey_index).zero?
          monkey.switch_door(door)
        end
      end
    end
  end

  def self.algorithm_c(doors, monkeys)
    monkeys.each_with_index do |monkey, monkey_index|
      # Monkeys in a second half will only open 1 doors
      # if 100 monkeys and 100 doors and monkey 70 will only open door 70
      if monkey_index > (doors.count / 2)
        monkey.switch_door(doors[monkey_index])
        next
      end

      # It only makes sense to loop over the doors that a monkey might open
      # e.g. monkey 30th will only start opening doors at the 30th doors
      valid_doors = doors.drop(monkey_index)

      valid_doors.each_with_index do |door, door_index|
        one_indexed_door_index = door_index + monkey_index + 1 # reset the door index as if we didn't drop any doors
        one_indexed_monkey_index = monkey_index + 1

        if (one_indexed_door_index % one_indexed_monkey_index).zero?
          monkey.switch_door(door)
        end
      end
    end
  end
end
