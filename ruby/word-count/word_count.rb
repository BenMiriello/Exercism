=begin
Write your code for the 'Word Count' exercise in this file. Make the tests in
`word_count_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/word-count` directory.
=end

class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    counts = {}
    for word in @phrase.scan(/\w+/)
      counts[word] = (counts[word] || 0) + 1 
    end
    counts
  end
end
