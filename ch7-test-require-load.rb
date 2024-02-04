require_relative 'ch7-string-extensions'

puts 'This is a test string'.vowels.join('-')

puts "When you use 'require', Ruby looks in directories stored in '$:' env variable:"
$:.each { |directory| puts directory }

# you can add directory
$:.push "#{File.expand_path('~')}/Desktop"
$:.push "#{File.expand_path('~')}/Documents"
$:.each { |directory| puts directory }

# you can conditionally add different files
$debug_mode = false
require_relative $debug_mode ? 'debug classes' : 'ch7-string-extensions'

# A commonly used shortcut uses arrays to quickly load a collection of libraries at once, for example:
# %w{file1 file2 file3 file4 file5}.each { |file| require file }