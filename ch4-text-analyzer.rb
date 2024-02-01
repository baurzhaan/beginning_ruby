=begin
  1. Load a file containing the text or document you want to analyze.
  2. As you load the file line by line, keep a count of how many lines there were (one of your statistics taken care of).
  3. Put the text into a string and measure its length to get your character count.
  4. Temporarily remove all whitespace and measure the length of the resulting string to get the character count excluding spaces.
  5. Split out all the whitespace to find out how many words there are.
  6. Split on full stops to find out how many sentences there are.
  7. Split on double newlines to find out how many paragraphs there are.
  8. Perform calculations to work out the averages.
=end

line_count = 0
text = ''

lines = File.open(ARGV.first)

lines.each do |line| 
  line_count += 1
  text += line
end

puts text
puts
puts "There are #{line_count} lines."
puts "There are #{text.length} characters."
puts "There are #{text.size} characters."
puts "There are #{text.gsub(/\s+/,'').size} characters excluding spaces"
word_count = text.split.size
puts "There are #{word_count} words."
sentence_count = text.split(/\.|\?|!/).size
puts "There are #{sentence_count} sentences."
paragraph_count = text.split(/\n\n/).size
puts "There are #{paragraph_count} paragraphs."
puts "There are #{(word_count / sentence_count.to_f).truncate(2)} words per sentence in average."
puts "There are #{(sentence_count / paragraph_count.to_f).truncate(2)} sentences per paragraph."

stopwords = %w(the a by on for of are with just but and to the my I has some in)
words = text.scan(/\w+/)
goodwords = words.reject { |word| stopwords.include?(word) }
good_percentage = ((goodwords.length.to_f / words.length.to_f) * 100).to_i
puts "The percentage of good words is #{good_percentage}%"