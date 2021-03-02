=begin
Write your code for the 'Series' exercise in this file. Make the tests in
`series_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/series` directory.
=end

class Series
  def initialize(numbers)
    @@numbers = numbers.split('').map { |sn| sn.to_i }
  end

  def slices(n)
    raise ArgumentError.new if n > @@numbers.length
    @slices = []
    i = 0

    while i < @@numbers.length - n + 1
      @slices << @@numbers[i..i + n - 1]
      i += 1
    end

    @slices.map { |set| set.join('').to_s }
  end
end
