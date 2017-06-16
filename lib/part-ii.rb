# Rock-Paper-Scissors

# (a)

WrongNumberOfPlayersError = Class.new(StandardError)
NoSuchStrategyError = Class.new(StandardError)

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  strategies = ["R","P","S"]
  p1 = game[0]
  p2 = game[1]

  choices = []

  game.each do |game_info|
    player_choice = game_info[1]
    unless strategies.include?(player_choice.capitalize)
      raise NoSuchStrategyError
    end
    choices << player_choice
  end

  c1 = choices[0]
  c2 = choices[1]

  if (c1 == "R" && c2 == "S") || (c1 == "P" && c2 == "R") || (c1 == "S" && c2 == "P")
    return p1
  elsif (c1 == c2)
    return p1
  else
    p2
  end
end



# (b)

def rps_tournament_winner(tournament)
  games_one = tournament[0]
  games_two = tournament[1]

  semi_finalists_one = []
  semi_finalists_two = []
  final = []

  games_one.each do |game|
    semi_finalists_one << rps_game_winner(game)
  end

  games_two.each do |game|
    semi_finalists_two << rps_game_winner(game)
  end

  final << rps_game_winner(semi_finalists_one)
  final << rps_game_winner(semi_finalists_two)

  return rps_game_winner(final)
end
