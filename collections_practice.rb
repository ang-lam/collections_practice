def sort_array_asc(array)
    array.sort
end

def sort_array_desc(array)
    array.sort do |a, b|
        if a == b
            0
        elsif a > b
            -1
        elsif a < b
            1
        end
    end
end

def sort_array_char_count(array)
    array.sort do |a, b|
        a.length <=> b.length
    end
end

def swap_elements(array)
    temp = array[1]
    array[1] = array[2]
    array[2] = temp
    array
end

def swap_elements_from_to(array, index, destination_index)
    temp = array[index]
    array[index] = array[destination_index]
    array[destination_index] = temp
    array
end

def reverse_array(array)
    array.reverse
end

def kesha_maker(array)
    array.each {|name| name[2] = "$"}
end

def find_a(array)
    array.select {|word| word.start_with?("a")}
end

def sum_array(array)
    array.inject(0) {|sum,x| sum + x}
end

def add_s(array)
    array.each_with_index.collect do |element, index|
        if index != 1
            element + "s"
        else element
        end
    end
end