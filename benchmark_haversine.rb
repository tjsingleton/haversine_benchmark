require "./ruby_haversine.rb"
require "./inline_haversine.rb"
require "benchmark"

Benchmark.bmbm do |x|
  n = 1_000_000
  x.report("Ruby") { n.times { Haversine.distance(39.416454,-118.841204, 39.476181,-118.783931) } }
  x.report("Inline") { n.times { HaversineInline.distance(39.416454,-118.841204, 39.476181,-118.783931) } }
end
puts ""