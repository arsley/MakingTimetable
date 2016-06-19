# About Event

class Event
  def initialize(name, id)
    @name = name
    @id = id
    @table = []
  end
  attr_accessor :table
end
