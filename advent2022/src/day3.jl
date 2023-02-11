using BenchmarkTools
module Day3
const offset = convert(UInt8, '@')
const newline = convert(UInt8, '\n')
const item_values = [27:52; zeros(Int, 6); 1:26; zeros(Int, 6)]
function solve(input_path)
  data = read(input_path)
  compartment_1 = falses(64)
  compartment_2 = falses(64)
  knapsack_start = 1
  priority = 0
  for i in 1:2:size(data)[1]
    if data[i] == newline
      println(i)
      println(knapsack_start)
      midway = (i - knapsack_start) >> 1
      println(midway)
      println(i - knapsack_start)
      knapsack = data[knapsack_start:i-1] .- offset
      for j in 1:midway
        println(convert(Char, data[knapsack_start+j-1]))
        compartment_1[knapsack[j]] = true
      end

      for j in (midway+1):size(knapsack)[1]
        println(j)
        println(convert(Char, data[knapsack_start+j-1]))
        compartment_2[knapsack[j]] = true
      end

      common = compartment_1 .& compartment_2
      println(size(common))
      println(common)
      println(common .* item_values)
      priority += sum(common .* item_values)
      fill!(compartment_1, false)
      fill!(compartment_2, false)
      knapsack_start = i + 1
      println("reset")
    end
  end

  priority
end
end

if abspath(PROGRAM_FILE) == @__FILE__
  # display(@benchmark Day3.solve(ARGS[1]))
  println(Day3.solve(ARGS[1]))
end
