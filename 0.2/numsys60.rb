# About Time Control
# Use 60 numberic system

class NumSys60
  # time is must be inculded ':' ex. => '11:00'
  def initialize(time)
    @time = time.delete(':').to_i
  end

  # Add time...
  def +(other)
    if other >= 60
      @time += 100
      other -= 60
    end
    @time += other
    @time += 40 if @time[-2] >= 6
  end

  def between?(from, to)
  end

  # out
  def to_s
    @time
  end
end
