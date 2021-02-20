=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

class ResistorColorDuo

  def self.value(colors)
    values = ['Black', 'Brown', 'Red', 'Orange', 'Yellow', 'Green', 'Blue', 'Violet', 'Grey', 'White']

    resistance_values = []
    colors[0..1].each { |c| resistance_values << values.index(c.capitalize) }

    resistance_values.join.to_i
  end
end
