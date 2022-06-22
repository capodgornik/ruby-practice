puts "Enter a phrase:"
text = gets.chomp

puts "Enter the word(s) to be redacted:"
redact = gets.chomp

words = text.split(" ")
redact = redact.split(" ")

string = ""
words.each do |word|
  if redact.map(&:downcase).include? word.downcase
    string += "REDACTED "
  else
    string += word + " "
  end
end

print string
