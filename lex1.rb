#it is very easy to see what tokens Ruby creates for different code files, using a tool called Ripper. Shipped with Ruby 1.9 and Ruby 2.0, the
#Ripper class allows you to call the same tokenize and parse code that Ruby itself uses to process the text from code files.

require 'ripper'
require 'pp'
code = <<STR
10.times do |n|
  puts n
end
STR
puts code
pp Ripper.lex(code)
