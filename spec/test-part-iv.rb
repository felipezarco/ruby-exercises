require_relative '../lib/part-iv.rb'

describe Dessert do
  let(:chocolate)   { Dessert.new('Chocolate',666) }

  specify 'chocolate has attributes' do
    expect(chocolate.name).to eq('Chocolate')
    expect(chocolate.calories).to be(666)
    expect(chocolate.class).to be(Dessert)
  end

  it 'chocolate is not healthy but delicious' do
    expect(chocolate).not_to be_healthy
    expect(chocolate).to be_delicious
  end

  context 'change attributes' do
    it 'calories can be changed' do
      chocolate.calories = 546
      expect(chocolate.calories).to be(546)
    end
  end
end

describe JellyBean do
  let(:light_jelly) { JellyBean.new('Light Jelly',176,'strawberry') }
  let(:harrys_every_flavour) { JellyBean.new('Harray Every Flavour',546,'something') }

  specify 'light jelly as a jelly bean' do
    expect(light_jelly.name).to eq('Light Jelly')
    expect(light_jelly.calories).to be(176)
    expect(light_jelly.flavor).to eq('strawberry')
    expect(light_jelly.class).to be(JellyBean)
  end

  it 'light jelly is healthy and delicious' do
    expect(light_jelly).to be_healthy
    expect(light_jelly).to be_delicious
  end

  specify 'harrys every flavour as a jelly bean' do
    expect(harrys_every_flavour.name).to eq('Harray Every Flavour')
    expect(harrys_every_flavour.calories).to be(546)
    expect(harrys_every_flavour.flavor).to eq('something')
    expect(harrys_every_flavour.class).to be(JellyBean)
  end

  it 'harrys every flavour jelly not healthy but delicious' do
    expect(harrys_every_flavour).not_to be_healthy
    expect(harrys_every_flavour).to be_delicious
  end

  context 'not so good jelly bean' do
    it 'flavoured black licorice' do
      harrys_every_flavour.flavor = 'black licorice'
      expect(harrys_every_flavour.flavor).not_to eq('something')
      expect(harrys_every_flavour.flavor).to eq('black licorice')
      expect(harrys_every_flavour).not_to be_delicious
    end
  end
end
