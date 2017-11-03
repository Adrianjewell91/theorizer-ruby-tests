#Generate a set of 100 random intervals, ascending or descending, and store
# in an array.

def generate_intervals()
  samples = []
  100.times do |i|
    first_note = rand(88)
    negative = rand(1) == 1 ? -1 : 1
    second_note = first_note + (rand(12) * negative)
    samples << [first_note,second_note]
  end

  p samples
end

if $PROGRAM_NAME == __FILE__
  generate_intervals()
end
