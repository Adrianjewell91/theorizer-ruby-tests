require_relative "chord_samples_generator"

def chord_categorizer(samples)
  results = Hash.new(0)

  samples.each do |sample|
    sorted = sample.sort
    results[[(sorted[1]-sorted[0]).abs, (sorted[2]-sorted[1]).abs]] += 1
  end

  p results
  return results
end

if $PROGRAM_NAME == __FILE__
  samples = generate_chord_samples
  chord_categorizer(samples)
end
