require 'build_a_square'

describe 'generate_shape' do
  let(:num) { rand(0..50) }
  context 'returns a string with a square shape' do
    it 'as long and wide as the number when given 3' do
      expect(generate_shape(3)).to eq "+++\n+++\n+++"
    end

    it 'as long and wide as the number when given 10' do
      expect(generate_shape(10)).to eq "++++++++++\n++++++++++\n++++++++++\n++++++++++\n++++++++++\n++++++++++\n++++++++++\n++++++++++\n++++++++++\n++++++++++"
    end
    it "as long and wide as any number it's given" do
      expect(generate_shape(2)).to eq "++\n++"
      expect(generate_shape(4)).to eq "++++\n++++\n++++\n++++"
      expect(generate_shape(5)).to eq "+++++\n+++++\n+++++\n+++++\n+++++"
      expect(generate_shape(num)).to eq (("+"*num+"\n")*num).chomp
    end
  end
end
