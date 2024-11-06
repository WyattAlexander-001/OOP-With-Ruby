# Simple program to read a file
File.open('employee.txt', 'r') do |file|
  puts file.read.upcase
end

File.open('employee.txt', 'a') do |file|
  file.write("\nOscar, Accounting")
end
