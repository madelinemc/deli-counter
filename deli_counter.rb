
def take_a_number(array, name)
    #array = katz_deli contining the list of names currently in line. 
    #name should be a string containing the name of the person joining at the end of the line
    num_in_line = array.size + 1
    puts "Welcome, #{name}. You are number #{num_in_line} in line."
    array.push(name)
end


#shows everyone their current place in line
def line(array)
    if array.length >= 1
        number_in_line = []
        array.each_with_index { |name, place_in_line| 
            number_in_line << " #{place_in_line + 1}. #{name}" }
        output = number_in_line.join
        puts "The line is currently:#{output}"
    else
    puts "The line is currently empty."
    end
end

def now_serving(array)
    if array.size >= 1
    currently_serving = array.shift
    #should puts the next person in line and remove them from the front
    puts "Currently serving #{currently_serving}."
    else 
    puts "There is nobody waiting to be served!"
    end
end