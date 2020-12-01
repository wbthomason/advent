function load_input(path)
  return map(line -> parse(Int32, line), readlines(path))
end

function solve_1(data)
  values = BitSet()
  for val in data
    complement = 2020 - val
    if complement in values
      return complement * val
    end
    
    push!(values, val)
  end
end

function solve_2(data)
  sort!(data, alg=InsertionSort)
  len = length(data)
  for val in data
    l = 1
    h = len
    while h > l 
      sum = val + data[l] + data[h]
      if sum == 2020
        return val * data[l] * data[h]
      elseif sum > 2020
        h -= 1
      else
        l += 1
      end
    end
  end
end

function solve(data)
  println(@time solve_1(data))
  println(@time solve_2(data))
end

data = load_input("input.txt")
solve(data)
