require_relative '../lib/part-iii.rb'

describe "#combine_anagrams" do
  specify 'eight word array of words' do
    words = ['cars', 'for', 'potatoes', 'racs', 'four','scar', 'creams', 'scream']
    expect(combine_anagrams(words)).to include(["cars", "racs", "scar"],
                                               ["four"],
                                               ["for"],
                                               ["potatoes"],
                                               ["creams", "scream"])
  end
end

# Note: my first try to do the test didn't meet the specifications (see below what happened).

# expected: [["cars", "racs", "scar"], ["four"], ["for"], ["potatoes"], ["creams", "scream"]]
#     got: [["cars", "racs", "scar"], ["for"], ["potatoes"], ["four"], ["creams", "scream"]]

# but - groups them into anagram groups [...]
# and the order of the anagrams in the anagrams in the groups doesn't matter.
