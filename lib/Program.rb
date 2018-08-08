require_relative '../lib/monkey'


monkey = Monkey.new
door_arr = Array.new

for i in 0..99 do
  door = Door.new
  door_arr.push(door)
end
