require_relative "wagon_sort"

# TODO: Ask the user about students to add to the Wagon.
#       Remember, to read an input from the command line, use:
#       - `gets`:  https://ruby-doc.org/core-2.7.5/Kernel.html#method-i-gets
#       - `chomp`: https://ruby-doc.org/core-2.7.5/String.html#method-i-chomp


students = []
input = nil

while input != ""
  if students.length < 1
    puts "Type a student name:"
  else
    puts "Type another student name or press enter to finish:"
  end

  input = gets.chomp
  students << input
end



# TODO: Then call `wagon_sort` method defined in the wagon_sort.rb
#       file and display the sorted student list
students=wagon_sort(students)

if students.length > 1
  puts "Congratulations! Your Wagon has #{students.length} students:
 #{students[0..(students.length-2)]}"
else
  puts "Congratulations! Your Wagon has #{students.length} students: #{students}"
end
