require 'rspec'
require 'chord_categorizer/chord_samples_generator'

describe 'chord_samples_generator' do
  before(:each) do
    @samples = generate_chord_samples
  end

  it 'generates 100 samples' do
    expect(@samples.length).to eq(100)
  end

  it 'generates sample of length 3' do
    @samples.each do |sample|
      expect(sample.length).to eq(3)
    end
  end


  
end
