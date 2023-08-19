def tag(tag_name, attributes = nil)
  # TODO: Build HTML tags around content given in the block
  #       The method can be called with an optional HTML attribute inputted as [attr_name, attr_value]

  main = if block_given? ? yield(attributes) : attributes
  # print an html doc
  "<#{tag_name}#{main[0]}=\#{main[1]}>Hello world</#{tag_name}>"
end
