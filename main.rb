require 'byebug'
require_relative './lib/monkey'
require_relative './lib/door'

monkeys = []
doors = []

100.times do
  monkeys << Monkey.new
  doors << Door.new
end

monkeys.each_with_index do |monkey, monkey_index|
  monkey_index += 1
  doors.each_with_index do |door, door_index|
    door_index += 1

    if door_index % monkey_index == 0
      # byebug
      puts "Monkey #{monkey_index} #{door.is_opened? ? 'closes' : 'opens'} door #{door_index}"
      monkey.switch_door(door)
    end
  end
end


doors = doors.each_with_index.map({ |door,i| door.is_opened? ? i + 1 : nil }).compact

puts doors
