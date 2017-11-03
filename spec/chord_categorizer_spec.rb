require 'rspec'
require 'chord_categorizer/chord_categorizer'
require 'chord_categorizer/chord_samples_generator'

describe 'chord_categorizer' do
  before(:each) do
    @samples = generate_chord_samples
    @results = chord_categorizer(@samples)
  end

  it 'returns a hash counter' do
    is_a_hash = @results.is_a?(Hash)
    expect(is_a_hash).to be(true)
  end

  it 'counts the variables correctly' do
    total_count = @results.values.reduce(:+)
    expect(total_count).to eq(100)
  end

  it 'returns two types of chords' do
    expect(@results.keys.length).to eq(2)
  end

  it 'returns the two chords types that were created in the samples'
end
