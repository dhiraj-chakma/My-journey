def burger(patty, sauce, topping)
  # TODO: code the `burger` method
  # If they ask extra things on the patty, you should probaly yield that request
  # Else, return the normal burger
  patty = yield(patty) if block_given?

  return ["bread", patty, sauce, topping, "bread"]
end
