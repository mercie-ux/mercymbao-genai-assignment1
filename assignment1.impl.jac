impl RPSGame.start {
    if not [root --> (`?turn)] {
        # First round computer makes a random choice
        root ++> turn();
    }
    visit [root --> (`?turn)];
}

impl RPSGame.play {
    # The computer makes a random choice
    here.computer_choice = here.options[random.randint(0,2)];
    self.computer_choice = here.computer_choice;
    self.result = determine_winner(self.player_choice, self.computer_choice);

    print("\n== Rock Paper Scissors ==");
    print("You chose: ", self.player_choice);
    print("Computer chose: ", self.computer_choice);
    print("Result: ", self.result);

    disengage; # end after one round
}

