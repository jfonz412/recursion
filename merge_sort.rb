array = [9,4,5,3,7,8,6,1,2]

def split_array(array, split_1 = [], split_2 = [])
  return array if array.length == 1
  mid = array.length / 2

  split_1 = array[0...mid]
  split_2 = array[mid...array.length]

  split_1 = split_array(split_1)
  split_2 = split_array(split_2)

  return merge_array(split_1, split_2)
end

def merge_array(first_split, second_split)
  merged_array = []

  while first_split.empty? == false && second_split.empty? == false
  	if first_split[0] > second_split[0]
  	  merged_array << second_split.shift
  	else
  	  merged_array << first_split.shift
  	end
  end
  
  while first_split.empty? == false
  	merged_array << first_split.shift
  end

  while second_split.empty? == false
  	merged_array << second_split.shift	
  end

  return merged_array
end

p split_array(array)