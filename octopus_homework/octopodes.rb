FISH = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
TILES_ARRAY = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]
i = 0
TILES_HASH = Hash.new { |h,k| h[k] = i; i+= 1}
TILES_ARRAY.each { |ele| TILES_HASH[ele] }


def sluggish_octopus(arr) # O(n^2)
  arr.each_with_index { |fish,idx| 
    longest_fish = false
    arr[idx..-1].each_with_index { |second_fish, idx2|
      longest_fish = fish.length >= second_fish.length
    }
    longest_fish ? (return fish) : next
  }
end

def dominant_octopus(arr) # O(n log n)
  case arr.length
  when 0, 1
    return arr
  when 2
    arr[0] <= arr[1] ? arr : [arr[1], arr[0]]
  else

  end
end

def clever_octopus(arr) # O(n)
  longest_fish = nil
  arr.each { |fish|
    longest_fish = longest_fish ? (longest_fish.length <= fish.length ? fish : longest_fish) : fish
  }
  longest_fish
end

def generate_code(number)
  charset = Array('A'..'Z') + Array('a'..'z')
  Array.new(number) { charset.sample }.join
end


50000.times do 
  FISH << generate_code(rand(50))
end

def slow_dance(dir, tiles)
  TILES_ARRAY.each_with_index { |direction,idx| 
    return idx if dir == direction
  }
end

def fast_dance(dir, tiles)
  TILES_HASH[dir]
end