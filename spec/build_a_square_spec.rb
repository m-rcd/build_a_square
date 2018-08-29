require 'build_a_square'

describe 'generate_shape' do
  let(:num) { rand(0..50) }
  context 'returns a string with a square shape' do
    it "as long and wide as any number it's given" do
      expect(generate_shape(num)).to eq (("+"*num+"\n")*num).chomp
    end
  end
end
