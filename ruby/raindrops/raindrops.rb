=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end

class Raindrops
  def self.convert(n)
    message = ''
    message += 'Pling' if n % 3 == 0
    message += 'Plang' if n % 5 == 0
    message += 'Plong' if n % 7 == 0
    message = n.to_s if message.length.zero?
    message
  end
end
