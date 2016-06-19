# autoload :Autoloader, './autoloader'
require_relative 'autoloader'

all_members = %w(A B C D E F G H I J)
events = %w(soccer basket volley hand tennis)
temptemp = Table.new(all_members, events)
# p temptemp
# p temptemp.events
temptemp.complete
temptemp.events.each { |event| p event.table }
