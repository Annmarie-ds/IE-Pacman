require_relative './lib/grid'
require_relative './lib/pacman'


grid = Grid.new
pacman = Pacman.new

puts "Here are some game instructions to start the game! \n
Pacman starts at row 0, column 0 in the bottom left corner \n
(Row and column counts start at 0 and end at 4) \n
Enter 'PLACE' followed by the row and column number to put Pacman on your location. \n
example: PLACE 4, 4, NORTH \n
Then enter one of the following commands! \n
- 'LEFT' which turns Pacman 90 degrees to the left \n
- 'RIGHT' which turns Pacman 90 degrees to the right \n
- 'MOVE' which moves Pacman one step in the direction he is facing \n
- 'REPORT' gives the current coordinates of Pacman \n
Enter 'EXIT' to leave the game! \n "

loop do
  puts 'Command:'
  input = gets.chomp

  place = /^PLACE\s*\d+\s*,\s*\d+\s*,\s*(NORTH||EAST||WEST||SOUTH)\s*$/
  move = /^MOVE\s*$/
  left = /^LEFT\s*$/
  right = /^RIGHT\s*$/
  report = /^REPORT\s*$/
  exit = /^EXIT\s*$/


  unless input.match(exit)
    if input.match(place)
      command, x, y, f = input.gsub(',', ' ').split
      pacman.place(x.to_i, y.to_i, f)
    elsif input.match(move)
      pacman.move
    elsif input.match(left)
      pacman.left
    elsif input.match(right)
      pacman.right
    elsif input.match(report)
      p pacman.report
    else
      puts "I m not sure I understand, please enter again!"
    end
    next
  end

  puts "Exiting...See you later!"
  break
end
