using BenchmarkTools

module Day2
const offset = convert(Int, '@')
const strat1_outcomes = [3 6 0; 0 3 6; 6 0 3]
const strat2_moves = [3 1 2; 1 2 3; 2 3 1]

function solve(input_path)
  strat1_score = 0
  strat2_score = 0
  data = read(input_path)
  # NOTE: Using @simd here makes the loop slower! I suspect due to added branching or stalling, but
  # I'm not sure why yet
  @inbounds for i in 1:4:size(data)[1]
    opponent = data[i] - offset
    move = data[i+2] - offset - 23
    strat1_score += move + strat1_outcomes[opponent, move]
    strat2_score += strat2_moves[opponent, move] + strat1_outcomes[opponent, strat2_moves[opponent, move]]
  end

  strat1_score, strat2_score
end
end

if abspath(PROGRAM_FILE) == @__FILE__
  display(@benchmark Day2.solve(ARGS[1]))
  println(Day2.solve(ARGS[1]))
end
