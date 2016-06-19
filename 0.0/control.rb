# About Table Making

module Control
  def init_event(events)
    @events = []
    events.each_with_index do |event, i|
      @events << Event.new(event, i)
    end
  end

  def all_combinate
    @all_members.combination(2) { |mem1, mem2| @all_combis_def << [mem1, mem2] }
  end

  def difine_combis
    @all_combis_def = []
    all_combinate
  end

  def choice(all_combis)
    all_combis.sample
  end

  def matching(outtable, alltable)
    match = choice(alltable)
    return match unless check(outtable, match)
    alltable.delete(match)
    matching(outtable, alltable)
  end

  def make_line
    @all_table_combis = @all_combis_def.dup
    @events.each_with_index do |event, i|
      @timetable << matching(@timetable, @all_table_combis)
      event.add_table(@timetable[i])
    end
  end

  def make
    make_line
  end
end
