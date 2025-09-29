"""An AI-Enhanced Rock Paper Scissors Game"""

import random;
import  byllm.llm { Model };


# glob llm = Model(model_name="gpt-4o", verbose=False);
glob llm = Model(model_name="gemini/gemini-2.0-flash", verbose=False);

"""Provide a fun response based on the outcome"""
def give_commentary(player: str, computer: str, result: str) -> str by llm();

walker RPSGame {
    has player_choice: str;
    has computer_choice: str;
    has result: str;

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
    } elif ((player == "rock" and computer == "scissors") or 
         (player == "paper" and computer == "rock") or 
         (player == "scissors" and computer == "paper") ){
        return "You win!";
    } else {
        return "Computer wins!";
    }
}

with entry:__main__ {
    root spawn RPSGame("rock");
    root spawn RPSGame("paper");
    root spawn RPSGame("scissors");
}
