def merge(left, right)
    result = []
    while left.size > 0 and right.size > 0
        if left[0] < right[0]
            result << left[0]
            left = left[1..-1]
        elsif right[0] < left[0]
            result << right[0]
            right = right[1..-1]
        else   
        	result << right[0] 
        	result << left[0]
        	left = left[1..-1]
            right = right[1..-1]
        end
    end
    if left.size > 0
        result.concat left
    end
    if right.size > 0
        result.concat right
    end
    return result
end

def merge_sort(arr)
    result = []    
    
    if arr.size <= 1
        return arr
    else
        half = arr.size / 2
        left = arr[0..half - 1]
        right = arr[half..-1]
        left = merge_sort(left)
        right = merge_sort(right)
        if left[-1] <= right[0]
            left.concat right
            return left
        end
        result = merge(left, right)
        return result
    end
end


print merge_sort([1, 6, 3,5,54, 2, 8, 6, 4])