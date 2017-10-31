def sort_array_asc(array)
	array.sort 
end

def sort_array_desc(array)
	array.sort { |x,y| y <=> x } 
end

def sort_array_char_count(array)
	array.sort { |x,y| x.length <=> y.length} 
end

def swap_elements(array)
	if array.length > 2
		temp = array[1]
		array[1] = array[2]
		array[2] = temp
	end
	array
end

# Need to test and maybe make tests 
# def swap_elements_from_to(array, index, destination_index)
# 	if array.length >= index && array.length >= destination_index
# 		temp = array[index]
# 		array[index] = array[destination_index]
# 		array[destination_index] = temp
# 	end
# 	array
# end

def reverse_array(array)
	array.reverse
end 

def kesha_maker(array)
	kesha_array = []
	array.each do |string|
		string[2] = "$"
		kesha_array  << string
	end
end

def find_a(array)
	array.select do |string|
		string.start_with?("a")
	end
end

def sum_array(array)
	array.inject{|sum, n| sum + n}
end

def add_s(array)
	array.each_with_index.collect do |str, i| 
		if i != 1
			str += "s"
		else 
			str
		end 
	end 
end
