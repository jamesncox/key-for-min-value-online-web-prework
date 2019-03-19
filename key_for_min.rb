# prereqs: iterators, hashes, conditional logic
# Given a hash with numeric values, return the key for the smallest value
require "pry" 

# def key_for_min_value(hash)
#   compared_value = 0
#   new_hash = {}
#   hash.collect do |k, v|
#     v == compared_value
#       binding.pry
#   end
# end

def key_for_min_value(hash)
  lowest_key = nil
  lowest_value = nil 
  hash.collect do |k, v|
    if lowest_value == nil || v < lowest_value
      lowest_value = v
      lowest_key = k
    end
  end
  lowest_key
end