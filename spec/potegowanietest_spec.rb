require 'rspec'
require_relative 'potegowanie'

describe 'Potegowanie' do

  it 'should return 1' do
    expect(potega2(1,0)).to eq(1)
    expect(potega2(1,1)).to eq(1)
    expect(potega2(10,0)).to eq(1)
  end

  it 'should return 64' do
    expect(potega2(2,6)).to eq(64)
  end

  it 'should be not be equal' do
    expect(potega2(3,5)).not_to eq(10)
  end
end