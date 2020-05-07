# Recap on conditionals

require 'date'
hour = Time.now.hour
minute = Time.now.min

puts "It's #{hour}:#{minute} ⏰"

# Using logical operators && and ||
its_morning = (hour >= 7 && hour <= 12)

# Depending on 1 condition: one-line if
puts 'Good morning! ☀️' if its_morning

# Depending on 2 conditions: ternary (if small enough!)
puts its_morning ? 'I hope you slept well 🤗' : 'You look tired again... 😨'

# Depending on more conditions: regular if or case statement
if minute < 15
  puts 'We just started the day with a lecture.'
elsif minute < 30
  puts "Let's get this going!"
else
  puts 'Is it that late already!?'
end

# Depending on more conditions - checking the same variable
# instead of "if hour == 9" "elsif hour == 10"
case hour
when 9 then puts 'I Feel This Will Be An Amazing Day 🤩'
when 10 then puts 'Can I please go get some coffee? ☕️'
else puts 'What am I doing with my life? 🥴'
end

# Remember we also have unless (same as "if not")
exit unless its_morning

# Keep running as long as condition is TRUE
condition = (hour != 'stop it already')
while condition == true
  puts 'DO YOU FEEL IT TOO? 👏👏👏'
  hour = 'stop it already' # change the variable
end

# Keep running as long as condition is FALSE
until minute == 'please... stop...'
  puts "YEEEAAAAH BABY I'M SO READY! 🚀"
  minute = 'please... stop...'
end
