require 'pry'



def begins_with_r(tools)
  flag = true

  tools.each do |items|
    if items.start_with?("r", "R") == false
      flag = false
    end
  end

  flag
end

def contain_a(array)
  a_array = []

  array.each do |item|
    if item.include?("a")
      a_array << item
    end
  end

  a_array
end

def first_wa(array)
  first = nil

  array.each do |item|
    if item.match(/wa/)
      first = item
      break
    end
  end

  first
end

def remove_non_strings(array)

container = []

  array.each do |element|
    container << element if element.is_a?(String)
  end
  container
end

#[{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
#[{:name => "blake", :count => 0}, {:name => "blake"}, {:name => "ashley"}]
#name = "blake"
#{}"blake" == "blake" true
#[{:name => "blake", :count => 1}, {:name => "blake"}, {:name => "ashley"}]
#"blake == "blake" true
#[{:name => "blake", :count => 2}, {:name => "blake"}, {:name => "ashley"}]
#"blake == "ashley" false
#[{:name => "blake", :count => 2}, {:name => "blake"}, {:name => "ashley"}]
#...
#ends with: [{:name => "blake", :count => 2}, {:name => "blake", :count => 2}, {:name => "ashley", :count => 1}]
#end.uniq: [{:name => "blake", :count => 2}, {:name => "ashley", :count => 1}]

def count_elements(array)
  array.each do |orig_hash|
    orig_hash[:count] = 0
    name = orig_hash[:name]
    array.each do |hash|
      if hash[:name] == name
        orig_hash[:count] += 1
      end
    end
  end.uniq
end





def merge_data(keys, data)
  merged_data = []

  keys.each do |name_hash|
    name = name_hash[:first_name]

    data.each do |info_hash|
      if info_hash[name]
        info = info_hash[name]
        info[:first_name] = name
        merged_data << info
      end
    end
  end
  merged_data
end










def find_cool(array)
  cool_array = []

  array.each do |hash|
    if hash[:temperature] == "cool"
      cool_array << hash
    end
  end
  cool_array
end


def organize_schools(school_list)
  container = {}

  school_list.each do |name, location_hash|
    school_location = location_hash[:location]

    if container[school_location]
      container[school_location] << name
    else
      container[school_location] = []
      container[school_location] << name
    end
  end
  container
end
