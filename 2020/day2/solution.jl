function parse_line(line)
  low = 0
  high = 0
  char = ""
  passw = ""
  start = 1
  idx = 1
  len = length(line)
  while idx <= len
    if line[idx + 1] == '-'
      break
    end

    idx += 1
  end

  low = parse(Int32, line[start:idx])
  idx += 2
  start = idx
  while idx <= len
    if line[idx + 1] == ' '
      break
    end

    idx += 1
  end

  high = parse(Int32, line[start:idx])
  char = line[idx + 2]
  passw = line[idx + 5:end]

  return low, high, char, passw
end

function load(input_path)
  return map(parse_line, readlines(input_path))
end

function valid_pw_1(spec)
  low, high, char, passw = spec
  count = 0
  idx = 1
  while (count <= high + 1) && (idx <= length(passw))
    if passw[idx] == char
      count += 1
    end

    idx += 1
  end

  return low <= count <= high
end

function solve_1(data)
  return length(filter(valid_pw_1, data))
end

function valid_pw_2(spec)
  low, high, char, passw = spec
  return xor(passw[low] == char, passw[high] == char)
end

function solve_2(data)
  return length(filter(valid_pw_2, data))
end

function solve(data)
  println(@time solve_1(data))
  println(@time solve_2(data))
end

data = load("input.txt")
solve(data)
