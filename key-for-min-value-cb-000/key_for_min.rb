# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value

def key_for_min_value(name_hash)
  min_name = nil
  min_value = nil
  name_hash.each { |k,v| min_name, min_value = k, v if min_value == nil || v < min_value }
  min_name
end
