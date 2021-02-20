=begin
Write your code for the 'High Scores' exercise in this file. Make the tests in
`high_scores_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/high-scores` directory.
=end

class HighScores
  attr_accessor :scores
  def initialize(scores)
    @scores = scores
  end

  def latest
    scores[scores.length - 1]
  end

  def personal_best
    scores.max
  end

  def personal_top_three
    top_three = []
    temp_scores = scores
    3.times do
      max = temp_scores.max
      top_three << max if max
      temp_scores.delete_at(temp_scores.index(max)) if max
    end

    top_three
  end

  def latest_is_personal_best?
    max = scores.max
    latest = scores[scores.length - 1]
    latest == max
  end
end
