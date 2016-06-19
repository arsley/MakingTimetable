# About Table
# require 'pry'
# require_relative 'event'
# require_relative 'control'

class Table
  include Control
  include MatchChecker

  def initialize(all_members, events)
    all_combinate(all_members)
    init_event(events)
  end
  attr_accessor :events, :all_combis_def
end
