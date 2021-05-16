=begin
Write your code for the 'Strain' exercise in this file. Make the tests in
`strain_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/strain` directory.
=end
class Array
  def keep
    mapped_array = []
    counter = 0
    until counter == self.size
      mapped_array.push(self[counter]) if yield self[counter]
      counter += 1
    end
    mapped_array
  end

  def discard
    yield self
  end
end
