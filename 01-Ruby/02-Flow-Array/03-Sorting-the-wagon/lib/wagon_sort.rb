def wagon_sort(students)
  # TODO: return (not print!) a copy of students, sorted alphabetically
  #["M", "B", "C" ,"d"]
  students.sort { |a,b| a.downcase <=> b.downcase}
end
