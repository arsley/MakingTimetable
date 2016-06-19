# About Events

class Event
  def initialize(name, gametime, interval, coart)
    @name = name
    @gametime = gametime
    @interval = interval
    @coart = coart
    @table = Table.new(name)
  end
end
