require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}

  row_index = 0
  while row_index < nds.length
    #pp nds[row_index][:name]
    result["#{nds[row_index][:name]}"] = gross_for_director(nds[row_index])
    row_index += 1
  end
    result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
column_index = 0
worldwide_grosses = 0
  while column_index < director_data[:movies].length do
    worldwide_grosses += director_data[:movies][column_index][:worldwide_gross]
    column_index += 1
  end
  return worldwide_grosses
end
