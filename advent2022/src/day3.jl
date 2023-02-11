using BenchmarkTools
module Day3
const offset = convert(UInt8, '@')
const newline = convert(UInt8, '\n')
const item_values = [UInt32(27):UInt32(52); zeros(UInt32, 6); UInt32(1):UInt32(26); zeros(UInt32, 6)]
function solve(input_path)::Tuple{Int,Int}
  data = read(input_path)
  newlines = findall(c -> c == newline, data)
  knapsack_start = 1
  compartment_1 = UInt64(0)
  compartment_2 = UInt64(0)
  priority = UInt32(0)
  group_priority = UInt32(0)
  group_common = typemax(UInt64)
  group_idx = 1
  @inbounds for knapsack_end in newlines
    midway = (knapsack_end - knapsack_start) >> 1
    knapsack = @view data[knapsack_start:(knapsack_end-1)]
    @inbounds for j in 1:midway
      compartment_1 |= 1 << (64 - convert(UInt8, knapsack[j]) + offset)
    end

    @inbounds for j in (midway+1):length(knapsack)
      compartment_2 |= 1 << (64 - convert(UInt8, knapsack[j]) + offset)
    end

    priority += item_values[leading_zeros(compartment_1 & compartment_2)+1]
    group_common &= compartment_1 | compartment_2
    if group_idx % 3 == 0
      group_priority += item_values[leading_zeros(group_common)+1]
      group_common = typemax(UInt64)
    end

    compartment_1 = UInt64(0)
    compartment_2 = UInt64(0)
    group_idx += 1
    knapsack_start = knapsack_end + 1
  end

  priority, group_priority
end
end

if abspath(PROGRAM_FILE) == @__FILE__
  display(@benchmark Day3.solve(ARGS[1]))
  println(Day3.solve(ARGS[1]))
end
