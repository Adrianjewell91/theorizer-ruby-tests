# Generate arrays of three numbers each
# Build an array of 100 samples, randomly order.

def generate_chord_samples
  samples = []

  100.times do
    n = [3,4].sample
      note_a = rand(88)
      note_b = note_a + n
      note_c = note_a + 7

      samples << [note_a, note_b, note_c].shuffle
  end

  samples = samples.shuffle

  return samples
end

if $PROGRAM_NAME == __FILE__
  samples = generate_chord_samples
  p samples
end
