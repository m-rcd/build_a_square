require 'build_a_square'

describe 'generate_shape' do
  it 'returns a string with a square shape when given 3' do
    expect(generate_shape(3)).to eq "+++\n+++\n+++"
  end
end
