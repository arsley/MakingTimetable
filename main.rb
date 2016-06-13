# To make Timetable
require_relative 'autoloader'

all_members = %w(A B C D E F G H I J K L)
events = %w(soccer basket volley)
temptemp = Table.new(all_members, events)
temptemp.make
temptemp.events.each { |event| p event.table }
