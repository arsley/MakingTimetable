require 'pry'
require_relative 'table'
temp = %w(A B C D E F)
events = %w(soccer basket volley)
temptemp = Table.new(temp, events)
# p temptemp
temptemp.make_line
p temptemp
