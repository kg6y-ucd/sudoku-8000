# sudoku-8000
A port of TIC-80's [SUDOKU8000](https://tic80.com/play?cart=4203) to uxn.
# ![Screenshot](./screenshot.png)
## Starting the Game
Start the game with the following command.  
```uxnemu sudoku-8000.rom```
## Gameplay Overview
### Selecting a Sudoku Puzzle 
When launched, a randomly selected unsolved Sudoku puzzle will be displayed. To select another Sudoku puzzle randomly, press the F4 key to restart.  
You can directly select a Sudoku puzzle by changing the four-digit number in the top right corner.  
### Inputting Numbers
Use the arrow keys to move the cursor and the Z and X keys to increase or decrease numbers. You can also use the mouse; in that case, use the left and right buttons to increase or decrease numbers.
## Saving and Clearing Game Progress
Information about which Sudoku puzzles have been solved is saved in a 1KB file called "sudoku-8000.mem". To clear the information, delete the "sudoku-8000.mem" file.
## Building from Source
"run.sh" is a build script for Linux. When executed, it generates "sudoku-8000.rom".
