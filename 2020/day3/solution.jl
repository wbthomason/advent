using Printf

parse_line(line) = [c == '.' ? false : true for c in line]

function load(path)
  # NOTE: I do not know why vcat doesn't work here, but this is just the input loader, so I don't
  # care too much
  hcat(map(parse_line, readlines(path))...)'
end

function check_slopes(data)
  y = 1
  # NOTE: We could do this in a more general way (maybe?) but I'm feeling lazy
  trees :: Array{Int} = zeros(5)
  rows = size(data, 1)
  cols = size(data, 2)
  while y <= rows
    for (i, h) in enumerate((1, 3, 5, 7))
      x = (((y - 1) * h) % cols) + 1
      if data[y, x]
        trees[i] += 1
      end
    end

    if (y - 1) % 2 == 0 && data[y, (div(y, 2) % cols) + 1]
      trees[5] += 1
    end

    y += 1
  end

  trees, reduce(*, trees)
end

function solve(data)
  println(@time check_slopes(data))
end

data = load("input.txt")
solve(data)
