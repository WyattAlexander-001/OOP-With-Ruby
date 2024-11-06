name = "John"
long_string = <<-EOF
This is a long string
that spans multiple lines
I can use "" and '' in this string
I can use interpolation #{1 + 1}
Maybe call a method #{Time.now} and #{name}
EOF
puts long_string