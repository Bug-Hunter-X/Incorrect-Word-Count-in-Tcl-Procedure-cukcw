proc count_words {text} {
  # Incorrectly handles multiple spaces
  set words [regexp -all -inline {\S+} $text]
  return [llength $words]
}

puts [count_words {this is a test}] ; # Output: 4
puts [count_words {this  is a test}] ; # Output: 4 (Incorrect, should be 4)