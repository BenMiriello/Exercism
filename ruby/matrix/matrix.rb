=begin
Write your code for the 'Matrix' exercise in this file. Make the tests in
`matrix_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/matrix` directory.
=end

class Matrix
  attr_accessor :rows, :columns
  def initialize(matrix_string)
    @rows = strings_to_rows(matrix_string)
    @columns = rows_to_columns(@rows)
  end

  private

  def strings_to_rows(matrix_string)
    row_string_arrays = matrix_string.split("\n").map do |rs|
      rs.split(' ')
    end

    row_string_arrays.map do |rsa|
      rsa.map do |s|
        s.to_i
      end
    end
  end

  def rows_to_columns(rows)
    columns = []
    rows[0].length.times do
      columns << []
    end

    rows.length.times do |i|
      rows.each do |r|
        columns[i] << r[i] if r[i]
      end
    end

    columns
  end
end
