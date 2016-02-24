#Whitchcraft 
# Whitchcraft should be used for self entertainment, not to be played with not
# aware people.
#
#How to use: in irb console load app.rb file, than when creating string with
#object, e.g own name, next_mix function, with parameter of years is run.
#
#e.g 'Bartosz Wais'.next_mix(34)
#
#
#Idea for improvement: script is using built-in method 'next', creating
#'previous' metthod to traverse in negative direction. could be interesting,
#usage: 'Bartosz Wais'.prev_mix(34) or reducing to 'Bartosz Wais'.mix(-3)
#
#
class String
    def next_mix(mix_times=1)
        result = self
        mix_times.times {
             result = result.split(//).map {
                |x| x.next
            }.join
        }
        result
    end
end

'bartosz'.next_mix(4)

