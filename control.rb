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

  def into_main_table(sub_table)
    @exit_code += 1
    @events.each_with_index { |event, i| event.table << sub_table[i] }
  end

  def re_try_making
    @exit_code -= 1
    @events.each do |event|
      event.table.delete_at(-1)
    end
  end

  def matching(main_table, sub_table, all_combis)
    match = choice(all_combis)
    return nil if match.nil?
    return match unless check(main_table, sub_table, match)
    all_combis.delete(match)
    matching(main_table, sub_table, all_combis)
  end

  def making
    sub_table = []
    @events.each do |event|
      all_combis = @all_combis_def.dup
      sub_table << matching(event.table, sub_table, all_combis)
    end
    return into_main_table(sub_table) unless sub_table.include?(nil)
    re_try_making
  end

  def make
    making until @exit_code == @battles
  end

  def disp_table
    @events.each do |event|
      event.table.each { |versus| print "#{versus}\n" }
    end
  end
end
