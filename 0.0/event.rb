# About Events
# Relation to Table

require_relative 'control'
require_relative 'match_checker'
class Event
  include Control
  include MatchChecker

  def initialize(name, id)
    @event_name = name
    @event_id = id
    @table_event = []
  end

  def add_table(timetable)
    @table_event << timetable
  end

  def make_col(all_combis_def)
    @all_events_combis = all_combis_def.dup
    @table_event << matching(@table_event, @all_events_combis)
  end
end
