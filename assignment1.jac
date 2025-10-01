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
    has computer_choice: str = "";
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
    # Get player input
    print("Welcome to Rock Paper Scissors Game!");

    # when user wants to play again
    play_again = "yes";
    valid_choices = ["rock", "paper", "scissors"];

    while play_again.lower() in ["yes", "y"] {
        #Get player input
        player_input = input("Enter your choice (rock/paper/scissors): ").lower().strip();
        #validate input
        valid_choices = ["rock", "paper", "scissors"];
        if player_input in valid_choices {
            root spawn RPSGame(player_choice=player_input);
        } else {
            print("Invalid choice! Please choose rock, paper,scissors.");
            continue;
        }
        #Ask if player wants to play again
        play_again = input("Play again? (yes/no): ").strip();
    }
    print("Thanks for playing! Goodbye! 👋");
    

}
