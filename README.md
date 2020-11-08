# **Setup**

This application has been built on
- Ruby version: 2.7.1

And has been tested on
- Rspec version: 3.10

Run ``` $ bundle install ``` before running the app
IF YOU GET an ERROR message stating: You must use Bundler 2 or greater with this lockfile, then run this command:
```
$ gem install bundler
```

## **Run the program**

From the program's main folder, run
```
$ ruby app.rb
```

The app will prompt you with instructions.
However these are the commands you may enter:
(Note: X = row number from 0 to 4, Y = column number from 0 to 4, F = Direction Pacman is facing (NORTH, EAST, SOUTH, WEST))
```
PLACE X,Y,F
MOVE
LEFT
RIGHT
REPORT
```
Example Input and Output:
```
1.

PLACE 0,0,NORTH
MOVE
REPORT

Output: 0,1,NORTH
```

## **Run the tests**

From the program's main folder, run
```
$ rspec
```
