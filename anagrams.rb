# anagram


def first_anagram?(*strings)
    var = strings[0].split('').permutation.to_a
    var.any? {|ele| ele.join('') == strings[1]}
end


def second_anagram?(*strings)
    first_word = strings.first.split("")
    last_word = strings.last.split("")
    first_word.each do |char|
        last_word.delete_at(last_word.find_index(char)) if last_word.include?(char)
    end
    last_word.empty?
end

def third_anagram?(*strings)
    first_word = strings.first.split("").sort
    last_word = strings.last.split("").sort 
    first_word == last_word
end

def hash_str(string)
    hash = Hash.new(0)
    string.each_char { |ele| hash[ele] += 1 }
    hash
end 

def fourth_anagram?(*strings)anagram?("gizmo", "sally")    #=> false
    anagram?("elvis", "lives")    #=> true
    first_word = strings.first 
    last_word = strings.last
    hash_str(first_word) == hash_str(last_word) 
end

p first_anagram?("gizmo", "sally")    #=> false
p first_anagram?("elvis", "lives")    #=> true

