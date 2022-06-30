class Computer
  @@users = Hash.new

  def initialize(username, password)
    @username = username
    @password = password
    @files = Hash.new
    @@users[username] = password
  end

  def create(filename)
    time = Time.now
    @files[filename] = time
    puts "#{filename} has been added to files at #{time}"
  end

  def Computer.get_users
    return @@users
  end
end

my_computer = Computer.new("Pierre", "lotr")
