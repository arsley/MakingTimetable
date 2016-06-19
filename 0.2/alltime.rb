# About Time of Tournament

class AllTime
  def initialize(from, to, break_from, break_to, unit_time)
    @from = NumSys60.new(from)
    @to = NumSys60.new(to)
    @break_from = NumSys60.new(break_from)
    @break_to = NumSys60.new(break_to)
    @unit_time = unit_time
  end
end
