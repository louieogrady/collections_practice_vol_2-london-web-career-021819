require "pry"

def begins_with_r(array)
array.all? { |word| word.start_with?('r') }
end

def contain_a(array)
array.select { |word| word.include?('a') }
end

def first_wa(array)
array.find { |word| word.to_s.start_with?('wa') }
end

def remove_non_strings(array)
array.delete_if { |e| e.class != String }
end

def count_elements(array)
  counts = Hash.new(0)
  array.collect { |e| counts[e]+=1 }
    counts.collect { |hash, number| hash[:count] = number }
  counts.keys
end

def merge_data(keys, data)
  keys.each do |name_hash|
    data.each do |hash|
      name_hash.merge!(hash[name_hash[:first_name]])
    end
  end
end

def find_cool(array)
array.select {|data| data[:temperature] == "cool"}
end

#def find_cool(array)
#  array.select {|k| k if k.include?("cool")}          # include not a hash method?
#end

def organize_schools(schools)
  by_location = {}
    schools.each do |school, location_hash|
      location_hash.each do |symbol, location|
        if by_location[location] == nil
          by_location[location] = [school]
        else
          by_location[location] << school
        end
      end
    end
    by_location
end