def windowed_max_range(arr, w)
    current_max_range = 0
    i = 0
    while w+i < arr.length
        window = arr[i...2+i]
        current_range = window.max - window.min 
        current_max_range = current_range if current_range > current_max_range 
        i += 1
    end 
    p current_max_range
end

p windowed_max_range([1, 0, 2, 5, 4, 8], 2) == 4 # 4, 8
p windowed_max_range([1, 0, 2, 5, 4, 8], 3) == 5 # 0, 2, 5
p windowed_max_range([1, 0, 2, 5, 4, 8], 4) == 6 # 2, 5, 4, 8
p windowed_max_range([1, 3, 2, 5, 4, 8], 5) == 6 # 3, 2, 5, 4, 8