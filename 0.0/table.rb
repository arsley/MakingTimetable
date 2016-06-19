# About All Table
# Base

require_relative 'event'
require_relative 'control'
require_relative 'match_checker'
class Table
  include Control
  include MatchChecker

  def initialize(all_members, events)
    @all_members = all_members
    init_event(events)
    @timetable = []
    @battles = all_members.length / 2
    difine_combis
  end
end
