require 'benchmark'

class String
    def next_mix_split(mix_times=1)
        result = self
        mix_times.times {
             result = result.split(//).map {
                |x| x.next
            }.join
        }
        result
    end
    def next_mix(mix_times=1)
        result = self
        mix_times.times {
             result = result.chars.map {
                |x| x.next
            }.join
        }
        result
    end
end

'bartosz'.next_mix(4)

puts Benchmark.measure { 'Bartosz'.next_mix(81) }
puts Benchmark.measure { 'Bartosz'.next_mix_split(81) }
