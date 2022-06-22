puts "Enter some words:"
text_input = gets.chomp
words = text_input.split

frequencies = Hash.new(0)

words.each {|word| frequencies[word] += 1}
frequencies = frequencies.sort_by do |word, freq|
  freq
end

frequencies.reverse!

frequencies.each do |word, freq| 
  puts "#{word} #{freq.to_s}"
end
