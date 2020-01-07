require "benchmark"

puts "sluggish:"
puts Benchmark.measure {
  50.times do
    sluggish_octopus(FISH)
  end  
} 
puts "dominant:"
puts Benchmark.measure {
  50.times do
    dominant_octopus(FISH)
  end  
} 
puts "clever:"
puts Benchmark.measure {
  50.times do
    clever_octopus(FISH)
  end  
} 