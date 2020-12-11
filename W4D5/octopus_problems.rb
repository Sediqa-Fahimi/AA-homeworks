
# Sluggish Octopus
def longest_fish(array)
    longest_f = ""
    array.each_with_index do |fish1, i1|
        array.each_with_index do |fish2, i2|
            if i2 > i1 
                if fish1.length < fish2.length
                    longest_f = fish2
                else 
                    longest_f = fish1
                end
            end
        end
    end
    longest_f          
end

Dominant Octopus
def longest_fish(array)
    array.sort_by { |fish| fish.length}
    array[-1]
end

# Clever Octopus
def longest_fish(array)
    array.inject { |longest_f,fish| fish.length > longest_f.length ? fish : longest_f }
end

p longest_fish(['fish','fiiish','fiiiiish','fiiiish','fffish','ffiiiiisshh','fsh','fiiiissshhhhhh'])
#=> "fiiiissshhhhhh"

# Dancing Octopus
def slow_dance(direction, tile_arr)
    tile_arr.each_with_index { |tile,idx| return idx if tile == direction }
end

def fast_dance(direction, new_tile)
    new_tile[direction]
end


tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
p slow_dance("up", tiles_array)
#> 0

p slow_dance("right-down", tiles_array)
#> 3

new_tiles_data_structure = { 
    "up" => 0,
    "right-up" => 1,
    "right" => 2,
    "right-down" => 3,
    "down" => 4,
    "left-down" => 5,
    "left" => 6,
    "left-up" => 7
}

p fast_dance("up", new_tiles_data_structure)
#> 0

p fast_dance("right-down", new_tiles_data_structure)
#> 3