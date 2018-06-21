songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:\n
- help : displays this help message\n
- list : displays a list of songs you can play\n
- play : lets you choose a song to play\n
- exit : exits this program"
end

def list(songs)
  songs.each_with_index do |song, index|
    puts "#{index}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  song_match = 0
  # puts response.downcase

  if response.to_i == 0
    songs.each_with_index do |song, index|
      if response.downcase == song.downcase
        puts "Playing #{song}"
        song_match = 1
      end
    end
  elsif response.to_i > 0
    unless songs[response.to_i].nil?
      puts "Playing #{songs[response.to_i - 1]}"
      song_match = 1
    end
  end

  if song_match == 0
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  puts "Please enter a command:"
  response = gets.strip

  until response.downcase == "exit"
    case response.downcase
    when "help"
      help
    when "list"
      list(songs)
    when "play"
      play(songs)
    end

    puts "Please enter a command:"
    response = gets.strip
  end

  exit_jukebox
end
