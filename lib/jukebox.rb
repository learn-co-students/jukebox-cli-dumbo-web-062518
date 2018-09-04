require 'pry'

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
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end

def list(arr)
  arr.each_with_index do |song, i|
    puts "#{i + 1}. #{song}"
  end
end

def play(songs)
  puts "Please enter a song name or number:"
  response = gets.chomp
  if songs.include?(response)
    puts "Playing #{response}"
  elsif (1..9).to_a.include?(response.to_i)
    puts "Playing #{songs[response.to_i - 1]}"
  else
    puts "Invalid input, please try again"
  end
end

def exit_jukebox
  puts "Goodbye"
end

def run(songs)
  help
  user_input = ""
  while user_input != "exit"
    puts "Please enter a command:"
    user_input = gets.chomp
    case user_input
    when "list"
      list(songs)
    when "help"
      help
    when "play"
      play
    end
  end
  if user_input == "exit"
    exit_jukebox
  end
end

help
list(songs)
# play(songs)
