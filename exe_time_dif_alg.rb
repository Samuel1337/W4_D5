=begin
# my_min

def my_min(list)
    list.each_with_index do |el,i|
        min = true
        list.each_with_index do |el2,i2|
            if i2 > i && el2 < el
                min = false
            end
        end
        return el if min
    end
end

def my_min(list)
    acc = list.first
    list.each { |el| acc = el if acc > el }
    acc
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)  # =>  -5
# largest_contiguous_subsum

def  largest_contiguous_subsum(list)
    arr = []
    (0...list.length).each do |i|
        (i...list.length).each do |j|
            arr << list[i..j]
        end
    end
    max = arr[0].sum
    arr.each do |subarr|
        max = subarr.sum if subarr.sum > max
    end
    max
end

=end

def largest_contiguous_subsum(list)
    largest_sum = list.first
    current_sum = list.first
    list.each_with_index do |ele, i|
        current_sum = list[i..-1].sum 
        largest_sum = current_sum if current_sum > largest_sum 
        current_sum = list[0..i].sum 
        largest_sum = current_sum if current_sum > largest_sum
        current_sum = ele 
        largest_sum = current_sum if current_sum > largest_sum
    end
    largest_sum
end

list1 = [5, 3, -7]
p largest_contiguous_subsum(list1)

list2 = [2, 3, -6, 7, -6, 7]
p largest_contiguous_subsum(list2)

list3 = [-5, -1, -3]
p largest_contiguous_subsum(list3)
=begin

=end