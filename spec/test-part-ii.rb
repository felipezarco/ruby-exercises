require_relative '../lib/part-ii.rb'

describe "#rps_game_winner" do
  it 'who is rps game winner' do
    game = [ ["Armando", "P"], ["Dave", "S"] ]
    expect(rps_game_winner(game)).to eq(["Dave", "S"])
  end
end

describe "#rps_tournament_winner" do
  it 'who is rps tournament game winner' do
    tournament =
      [[
        [ ["Armando", "P"], ["Dave", "S"] ],
        [ ["Richard", "R"], ["Michael", "S"] ],
      ],
      [ [ ["Allen", "S"], ["Omer", "P"] ],
        [ ["David E.", "R"], ["Richard X.", "P"] ]
      ]]

    expect(rps_tournament_winner(tournament)).to eq(["Richard","R"])
  end
end
