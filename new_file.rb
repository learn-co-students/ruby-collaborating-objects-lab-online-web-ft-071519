def example_method(one, two = nil)
  puts one
  puts two unless two == false
end

example_method("Hello World", "Hi")


example_method('Hello')

example_method("this statement is ", false)