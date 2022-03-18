# two_sum

def bad_two_sum?(arr,target_sum) 
    arr.each_with_index do |el, i|
        arr.each_with_index do |el2, j|
            return true if j < i && el + el2 == target_sum
        end
    end
    false
end

def okay_two_sum?(arr,target_sum)
    sorted = arr.sort
    sorted.each_with_index do |el, i|
        var = sorted.bsearch_index { |el2| el2 == target_sum - el }
        return true if var && var != i
    end
    false
end

def two_sum?(arr,target_sum)
    hash = {}
    arr.each do |ele|
        return true if hash[target_sum - ele] 
        hash[ele] = true
    end
    false
end

arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true 
p two_sum?(arr, 10) # => should be false