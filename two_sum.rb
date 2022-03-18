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
    hash = Hash.new {|h, k| h[k] = [] }
    # arr.each {|ele| hash[ele] = target_sum - ele}
    # var = hash.map {|k,v| [k,v] if v != k }.compact
    # var.any? {|k| arr.include?(k) }
    arr.each_with_index do |ele, i|
        hash[i] = [target_sum - ele, ele]
    end
    mapped = hash.map {|k,v| v if v.uniq.length != 1 }.compact 
    # mapped.any? do |subarr|
        
    # end
end

# k target, [target-ele, ele]

arr = [0, 1, 5, 7]
p two_sum?(arr, 6) # => should be true 
p two_sum?(arr, 10) # => should be false