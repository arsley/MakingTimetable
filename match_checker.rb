# About Checking
# To Create Table

module MatchChecker
  def each_finder(table, match)
    return nil if table.empty?
    mem1, mem2 = match
    # table.each { |n| return match if n.include?(mem1) || n.include?(mem2) } #=> undefined method for nil:NilClass
    return nil unless table.flatten.find { |n| n == mem1 || n == mem2 }
    match
  end

  def check_conf(main_table, sub_table, match)
    return sub_table.include?(match) unless main_table.include?(match)
    match
  end

  def check_same(main_table, sub_table, match)
    return each_finder(sub_table, match) unless each_finder(main_table, match)
    match
  end

  def check(main_table, sub_table, match)
    return check_same(main_table, sub_table, match) unless check_conf(main_table, sub_table, match)
    match
  end
end
