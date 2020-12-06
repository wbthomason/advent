function compute_seat_id(spec)
  front::UInt8 = 0
  back::UInt8 = 127
  left::UInt8 = 0
  right::UInt8 = 7
  for c in spec
    if c == 'F'
      back = div(back - front, 2) + front
    elseif c == 'B'
      front = div(back - front, 2) + front
    elseif c == 'L'
      right = div(right - left, 2) + left 
    elseif c == 'R'
      left = div(right - left, 2) + left
    end
  end

  back * 8 + right
end

function find_seat(data)
  seats = sort(map(compute_seat_id, data))
  max_id = maximum(seats)
  seat_id = -1
  for (idx, seat) in enumerate(seats)
    if seats[idx + 1] == seat + 2
      seat_id = seat + 1
      break
    end
  end

  max_id, seat_id
end

function solve(data)
  println(@time find_seat(data))
end

data = readlines("input.txt")
solve(data)
