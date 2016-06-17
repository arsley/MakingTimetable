# To make Timetable
require_relative 'autoloader'

all_members = %w(a b c d e f g h i j k l m n o p q r)
events      = %w(1 2 3 4 5 6)
# all_members = %w(a b c d e f g h i j)
# events = %w(1 2 3 4 5)
temptemp = Table.new(all_members, events)
temptemp.make
temptemp.events.each { |event| p event.table }
