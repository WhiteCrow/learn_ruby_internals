require 'ripper'
require 'pp'
code = <<STR
array = []
10.times do |n|
  array << n if n < 5
end
p array
10.5
STR
puts code
pp Ripper.lex(code)
# << and 10.5 were converted to a single operator token.
# while the single < character that appeared later was converted into a simple lessthan operator.
# Ruby’s tokenize code is smart enough to look ahead for a second < character when it finds one <.
