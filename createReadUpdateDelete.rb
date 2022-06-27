movies = {
  LOTR: 4
}

puts "What do you want to do? (add, update, display, delete)"
choice = gets.chomp

case choice
  when "add"
    puts "Enter movie name:"
    title = gets.chomp
    puts "Enter movie rating:"
    rating = gets.chomp
    if movies[title.to_sym].nil?
      movies[title.to_sym] = rating.to_i
      puts "Added!"
    else
      puts "This movie is already in the hash"
    end
  when "display"
    movies.each do |title, rating|
      puts "#{title}: #{rating}"
    end  
  when "update"
    puts "Enter movie name:"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "This movie is not in the hash."
    else
      puts "Enter new rating:"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "Updated!"
    end   
  when "delete"
    puts "Enter movie name:"
    title = gets.chomp
    if movies[title.to_sym].nil?
      puts "This movie is not in the hash."
    else
      movies.delete(title.to_sym)
      puts("Deleted!")
    end
  else
    puts "Error! Please enter a valid choice."
end
