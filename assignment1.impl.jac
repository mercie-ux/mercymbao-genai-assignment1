impl RPSGame.start {
    if not [root --> (`?turn)] {
        # First round computer makes a random choice
        root ++> turn(computer_choice=["rock", "paper", "scissors"][random.randint(0, 2)]);
    }
    visit [root --> (`?turn)];
}

impl RPSGame.play {
    # The computer has already chosen inside the node
    self.computer_choice = here.computer_choice;
    self.result = determine_winner(self.player_choice, self.computer_choice);

    print("You chose: ", self.player_choice);
    print("Computer chose: ", self.computer_choice);
    print("Result: ", self.result);

    disengage; # end after one round
}

