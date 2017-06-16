require_relative '../lib/part-i.rb'

describe "#palindrome" do
  it 'is not palindrome' do
    expect(palindrome?("Zarco")).to be false
  end

  it 'is not palindrome' do
    expect(palindrome?("Abracadabra")).to be false
  end

  it 'is palindrome' do
    expect(palindrome?("Madam, I'm Adam!")).to be true
  end

  it 'is palindrome with non-letters' do
    expect(palindrome?("A man, a plan, a canal -- Panama")).to be true
  end
end

describe "#count_words" do
  specify 'count words frequency' do
    expect(count_words("Doo bee doo bee doo")).to eq({'doo' => 3, 'bee' => 2})
  end

  specify 'count words from non-letters' do
    expect(count_words("A man, a plan, a canal -- Panama")).to eq(
    {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1})
  end
end
