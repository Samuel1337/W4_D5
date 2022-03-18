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

=end
def  largest_contiguous_subsum(list)
    
end

list1 = [5, 3, -7]
p largest_contiguous_subsum(list1)

list2 = [2, 3, -6, 7, -6, 7]
largest_contiguous_subsum(list2)

list3 = [-5, -1, -3]
largest_contiguous_subsum(list3)
=begin

=end