# About Table

class Table
  include Control
  include MatchChecker

  def initialize(all_members, events)
    all_combinate(all_members)
    init_event(events)
    @battles = all_members.length / 2
  end
  attr_accessor :events, :all_combis_def
end
