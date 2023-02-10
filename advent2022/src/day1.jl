using BenchmarkTools

module Day1
function order(a, b)
  max(a, b), min(a, b)
end

@inline function netsort!(arr)
  @inbounds begin
    arr[1], arr[2] = order(arr[1], arr[2])
    arr[3], arr[4] = order(arr[3], arr[4])
    arr[1], arr[3] = order(arr[1], arr[3])
    arr[2], arr[4] = order(arr[2], arr[4])
    arr[2], arr[3] = order(arr[2], arr[3])
  end
end

function solve(problem_input)
  best = zeros(Int, 4)
  curr::Int = 0
  for c::Char in read(problem_input)
    if c == '\n'
      if curr == 0
        netsort!(best)
        @inbounds best[4] = 0
      else
        @inbounds best[4] += curr
        curr = 0
      end
    else
      curr = 10 * curr + parse(Int, c)
    end
  end

  @inbounds best[1], sum(@inbounds best[1:3])
end
end

if abspath(PROGRAM_FILE) == @__FILE__
  display(@benchmark Day1.solve(ARGS[1]))
  println(Day1.solve(ARGS[1]))
end
