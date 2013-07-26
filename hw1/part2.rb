class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
  # YOUR CODE HERE
end

def rps_game_winner(game)
  hash = {['R','R']=>0,['P','R']=>1,['S','R']=>-1,['R','P']=>-1,['P','P']=>0,['S','P']=>1,['R','S']=>1,['P','S']=>-1,['S','S']=>0}
  raise WrongNumberOfPlayersError if game.length != 2
  game.each do |play|
    raise NoSuchStrategyError if not play[1].match(/^[RPS]$/)
  end
  return hash[[game[0][1],game[1][1]]] >= 0 ? game[0] : game[1]
end

def rps_tournament_winner(tournament)
  if tournament.dimension == 2
    return rps_game_winner(tournament)
  end
  return rps_game_winner([rps_tournament_winner(tournament[0]),rps_tournament_winner(tournament[1])])
end

class Object
    def dimension
        self.class == Array ? 1 + self[0].dimension : 0
    end
end
