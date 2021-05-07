=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

# initialize with a phrase and get the number of words in the phrase with word_count
class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    counts = {}
    for word in @phrase.scan(/\w+/).map { |word| word.downcase }
      counts[word] = (counts[word] || 0) + 1 
    end
    counts
  end
end
