function load_input(path)
  return map(line -> parse(Int32, line), readlines(path))
end

function solve_1(data)
  values :: Set{Int32} = Set()
  for val in data
    complement = 2020 - val
    if complement in values
      return complement * val
    end
    
    push!(values, val)
  end
end

data = load_input("input.txt")
println(solve_1(data))
