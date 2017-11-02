#generate interval samples given an interval.
# 1 = minor2
# 2 = major2
# 3 = min3
# 4 = maj3
# 5 = p4
# 6 = aug4
# 7 = p5
# 8 = min6
# 9 = maj6
# 10 = min7
# 11 = maj7

def generate_samples (interval)
  samples = []

  # Start at middle C (39th note of a 88-key register)
  (39..50).each do |key|
    sample = [key, key+interval]
    samples << sample
    sample = [key, key-interval]
    samples << sample
  end

  p "Samples: #{samples}"
  p "No. of Samples: #{samples.length}"
  return samples
end

if $PROGRAM_NAME == __FILE__
  generate_samples(ARGV.shift.to_i)
end
