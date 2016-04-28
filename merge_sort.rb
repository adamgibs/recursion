def merge_sort(arr)

end

def split_array(arr)
	n = arr.size
	result = []
	if n == 1
		result << arr
	else
		arr_1 = arr[0..n/2 - 1]
		arr_2 = arr[n/2..-1]
		split_array(arr_1)
		split_array(arr_2)
	end
	result
end

def greater(a, b)
	if a > b
		a
	elsif b > a
		b
	else
		nil
	end
end

p split_array([1, 6, 3, 2, 8, 6, 4])