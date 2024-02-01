# dates and times
puts Time.now

# useful helpers for Integer class to manipulate with the date and time
class Integer
  def seconds # return seconds
    self
  end
  def minutes
    self * 60
  end
  def hours
    self * 60 * 60
  end
  def days
    self * 60 + 60 * 24
  end
  def weeks
    self * 60 * 60 * 24 * 7
  end
end

now = Time.now
puts "Current time: #{now}"
puts "10 minutes after current time: #{now + 10.minutes}"
puts "10 hours after current time: #{now + 10.hours}"
puts "10 days after current time: #{now + 10.days}"
puts "10 weeks after current time: #{now + 10.weeks}"
puts "Current date in seconds: #{now.to_i}"

# create date
year = 2024
month = 2
day = 1
hour = 13
min = 27
sec = 10
msec = 34
puts "Manually crafted date: #{Time.local(year, month, day, hour, min, sec, msec)}"