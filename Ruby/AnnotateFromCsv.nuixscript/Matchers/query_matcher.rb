# Matches items by query
class QueryMatcher < CSVMatcherBase
  # Regular expression used to recognize columns handled by this matcher
  @@header_regex = /^MatchQuery$/

  # Returns true if this matcher should take ownership of a given column based upon
  # that columns header value
  def self.your_header?(header)
    header =~ @@header_regex
  end

  # This method returns the items this matcher matches against given a particular row's value
  def obtain_items(column_value, nuix_case)
    # Run search based on given column value
    nuix_case.search(column_value)
  end

  def to_s
    'Query Matcher'
  end
end