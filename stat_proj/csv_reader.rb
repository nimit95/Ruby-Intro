
require 'csv'

require_relative 'book_in_stock'

class CsvReader
    def initialize
        @booksInStock = []
    end

    def read_in_csv_data(csv_file_name)
        CSV.foreach(csv_file_name, headers: true) do |row|
            @booksInStock << BookInStock.new(row["ISBN"], row["Price"])
        end
    end

    def total_value_in_stock
        sum = 0.0
        @booksInStock.each{|book| sum += book.price }
        sum
    end
end
