#given a sample of intervals, extract the intervals, and count the number of each one.

require_relative "generate_intervals"

def extract_intervals(samples)
  intervals = Hash.new(0)

  samples.each do |sample|
    interval = (sample[0] - sample[1]).abs
    intervals[interval] += 1
  end

  intervals.sort.each do |i|
    puts "Interval distance: #{i[0]}, Count: #{i[1]}"
  end
end


if $PROGRAM_NAME == __FILE__
  samples = generate_intervals()
  extract_intervals(samples)
end
