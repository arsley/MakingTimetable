# About Making Table
# About All of Control

module Control
  def all_combinate(all_members)
    @all_combis_def = []
    all_members.combination(2) { |mem1, mem2| @all_combis_def << [mem1, mem2] }
  end

  def init_event(events)
    @events = []
    events.each_with_index { |event, i| @events << Event.new(event, i) }
  end

  def choice(combis)
    combis.sample
  end

  def matching(main_table, sub_table, all_combis)
    match = choice(all_combis)
    return match unless check(main_table, sub_table, match)
    all_combis.delete(match)
    matching(main_table, sub_table, all_combis)
  end

  def making
    sub_table = []
    @events.each_with_index do |event, i|
      all_combis = @all_combis_def.dup
      sub_table << matching(event.table, sub_table, all_combis)
      event.table << sub_table[i]
    end
  end

  def make
    @battles.times do
      making
    end
  end
end
