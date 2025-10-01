# Rock Paper Scissors Game
A simple interactive Rock Paper Scissors game built with Jac programming language.

## Description
This is a command-line based Rock Paper Scissors game where you play against the computer. 
The computer makes random choices, and the game determines the winner based on the classic rules:

- Rock beats Scissors
- Paper beats Rock
- Scissors beats Paper

## Features

- Interactive gameplay with user input
- Random computer opponent
- Play multiple rounds
- Input validation

## Prerequisites
Before running this game, make sure you have:

- Jac installed on your system
- Visit Jac documentation for installation instructions [link](https://www.jac-lang.org/learn/installation/)
- Python (Jac runs on Python)
- Python 3.8 or higher recommended

## Installation

1. Clone or download this repository to your local machine
   ```
   git clone https://github.com/mercie-ux/mercymbao-genai-assignment1
   ```
2. Ensure you have the following files in your project directory:
```
assignment1.jac
```

4. Activate your Jac environment (if using a virtual environment,) :
```
# for windows
jac-env\Scripts\activate
#for linux/macos
source jac-env/bin/activate

```
## How to Run

1.Open your terminal or command prompt
Navigate to the directory containing your game file:
```
cd path/to/your/game/directory
```
Run the game using the Jac command:
```
jac run assignment1.jac
```
## How to Play

When the game starts, you'll see a welcome message
Enter your choice when prompted:

- Type rock, paper, or scissors
Press Enter

- The computer will make its choice randomly
The game will display:

- Your choice
Computer's choice
The result (You win, Computer wins, or It's a tie)

After each round, you'll be asked if you want to play again:

- Type yes or y to play another round
- Type no or anything else to exit the game

Example of gameplay
```
Welcome to Rock Paper Scissors!
Enter your choice (rock/paper/scissors): rock

== Rock Paper Scissors ==
You chose:  rock
Computer chose:  scissors
Result:  You win!
===========================

Play again? (yes/no): yes
Enter your choice (rock/paper/scissors): paper

== Rock Paper Scissors ==
You chose:  paper
Computer chose:  paper
Result:  It's a tie!
===========================

Play again? (yes/no): no
Thanks for playing! Goodbye! 👋
```
