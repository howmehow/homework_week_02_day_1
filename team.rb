
# Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).
# For each property in the class make a getter method than can return them.

# Create a setter method to allow the coach's name to be updated.

# Refactor the class to use attr_reader or attr_accessor instead of your own getter and setter methods.

# Create a method that adds a new player to the players array.

# Add a method that takes in a string of a player's name and checks to see if they are in the players array.

# Add a points property into your class that starts at 0.
# Create a method that takes in whether the team has won or lost and updates the points property for a win.

class Team
  attr_accessor :team_name, :players, :trainer, :points
  def initialize (team_name, players, trainer, points)
    @team_name = team_name
    @players = players
    @trainer = trainer
    @points = points
  end
  def team_name
    return @team_name
  end
  def players
    return @players
  end
  def trainer
    return @trainer
  end
  def change_trainer_name(new_name)
    @trainer = new_name
    return @trainer
  end
  def add_player_to_team(new_name)
    return @players.push(new_name)
  end
  def check_for_player(name)
    for name_temp in @players
      if name_temp == name
        return true
      end
    end

  end
  def add_remove_points(first_game, second_game)
    return @points + first_game + second_game
  end




end
