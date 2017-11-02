# Check the samples and find interval, checks to see if they all have it, if not,
# return that it couldn't find a common error.
require_relative "generate_interval_samples"

def find_interval(samples)
  interval = (samples[0][0] - samples[0][1]).abs

  # The test for uniform sample size. If
  samples.each do |sample|
    return nil if (sample[0] - sample[1]).abs != interval
  end

  puts
  puts "The common interval is: #{interval}"
  return interval
end

if $PROGRAM_NAME == __FILE__
  samples = generate_samples(ARGV.shift.to_i)
  find_interval(samples)
end
