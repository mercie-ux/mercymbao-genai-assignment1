"""A Rock Paper Scissors Game"""

import random;

walker RPSGame {
    has player_choice: str;
    has computer_choice: str ="";
    has result: str ="";

    #entry to start the game
    can start with `root entry;
    can play with turn entry;
}

node turn {
    has options: list[str] = ["rock", "paper", "scissors"];
    has computer_choice: str = options[random.randint(0, 2)];
}

def determine_winner(player: str, computer: str) -> str {
    if player == computer {
        return "It's a tie!";
    } elif((player == "rock" and computer == "scissors") or 
         (player == "paper" and computer == "rock") or 
         (player == "scissors" and computer == "paper")){
        return "You win!";
    } else {
        return "Computer wins!";
    }
}



with entry:__main__ {
    root spawn RPSGame(player_choice="rock");
    root spawn RPSGame(player_choice="paper");
    root spawn RPSGame(player_choice="scissors"); 
}
