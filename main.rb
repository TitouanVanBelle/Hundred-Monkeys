# frozen_string_literal: true

require 'benchmark'
require_relative './lib/hdhm'

time = Benchmark.measure do
  doors = HDHM.opened_doors(door_monkey_count: 10000)

  puts "The following doors are opened: #{doors.join(', ')}"
end

puts "Took #{time.real}"
