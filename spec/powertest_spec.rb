require 'rspec'
require_relative '../lib/power'

describe 'Testing Power class' do

  it 'should return 1' do
    power = Power.new
    expect(power.power(1,0)).to eq(1)
    expect(power.power(1,1)).to eq(1)
    expect(power.power(10,0)).to eq(1)
  end

  it 'should return 64' do
    power = Power.new
    expect(power.power(2,6)).to eq(64)
  end

  it 'should be not be equal' do
    power = Power.new
    expect(power.power(3,5)).not_to eq(10)
  end
end