# About Checking

module MatchChecker
  def check_conf(table, match)
    return nil unless table.include?(match)
    match
  end

  def check_same(table, match)
    mem1, mem2 = match
    return nil unless table.flatten.find { |n| n == mem1 || n == mem2 }
    match
  end

  def check(table, match)
    return check_same(table, match) unless check_conf(table, match)
    match
  end

  def check_conf_d(table1, table2, match)
    return nil unless table.include?(match)
    match
  end

  def check_same_d(table1, table2, match)
    mem1, mem2 = match
    return nil unless table.flatten.find { |n| n == mem1 || n == mem2 }
    match
  end

  def check_d(table1, table2, match)
  end
end
