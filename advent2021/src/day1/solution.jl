using BenchmarkTools

function load_input(input_path)
  map(line -> parse(Int32, line), readlines(input_path))
end

function solve_1(data)
  increases = 0
  for i = 2:length(data)
    if data[i] > data[i-1]
      increases += 1
    end
  end

  return increases
end

function solve_2(data)
  increases = 0
  for i = 4:length(data)
    if data[i] > data[i-3]
      increases += 1
    end
  end

  return increases
end

function solve(data)
  println(@btime solve_1($data))
  println(@btime solve_2($data))
end

test_data = load_input("test_input.txt")
println("Test input:")
solve(test_data)

data = load_input("input.txt")
println("\nReal input:")
solve(data)