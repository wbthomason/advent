using BenchmarkTools
module Day4
const newline = convert(UInt8, '\n')
const comma = convert(UInt8, ',')
const hyphen = convert(UInt8, '-')
const zero_char = convert(UInt8, '0')
@inline function rangetoint(data, st, en)
  result = 0
  @inbounds for i in st:en
    result = fma(result, 10, data[i] - zero_char)
  end

  result
end

function solve(input_path)
  data = read(input_path)
  line_ends = findall(c -> c == newline, data)
  line_starts = [1; line_ends .+ 1]
  containment_count = 0
  overlap_count = 0
  @inbounds for (line_start, line_end) in zip(line_starts, line_ends)
    hyphen_idx = line_start + 1
    while data[hyphen_idx] != hyphen
      hyphen_idx += 1
    end

    start_1 = rangetoint(data, line_start, hyphen_idx - 1)
    comma_idx = hyphen_idx + 1
    while data[comma_idx] != comma
      comma_idx += 1
    end
    end_1 = rangetoint(data, hyphen_idx + 1, comma_idx - 1)

    hyphen_idx = comma_idx + 1
    while data[hyphen_idx] != hyphen
      hyphen_idx += 1
    end
    start_2 = rangetoint(data, comma_idx + 1, hyphen_idx - 1)
    end_2 = rangetoint(data, hyphen_idx + 1, line_end - 1)

    containment_count += (start_1 <= start_2 && end_2 <= end_1) || (start_2 <= start_1 && end_1 <= end_2)
    overlap_count += (start_1 <= end_2) && (start_2 <= end_1)
  end

  containment_count, overlap_count
end
end

if abspath(PROGRAM_FILE) == @__FILE__
  display(@benchmark Day4.solve(ARGS[1]))
  println(Day4.solve(ARGS[1]))
end
