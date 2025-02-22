proc count_words {text} {
  # Correctly handles multiple spaces using \s+
  set words [regexp -all -inline {\S+} $text]
  return [llength $words]
}

puts [count_words {this is a test}] ; # Output: 4
puts [count_words {this  is a test}] ; # Output: 4