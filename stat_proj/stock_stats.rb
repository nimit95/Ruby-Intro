
require_relative 'csv_reader'

reader = CsvReader.new


ARGV.each do |fileName|
    STDERR.puts "Processing #{fileName}"
    reader.read_in_csv_data(fileName)
end

puts reader.total_value_in_stock
STDERR
