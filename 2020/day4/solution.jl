using Printf

function parse_passport(passport)
  result::Dict{String,String} = Dict()
  for chunk in split(passport)
    key, val = split(chunk, ':')
    result[key] = val
  end

  result
end

function load(path)
  passport_strings::Array{String} = []
  open(path) do data
    passport = ""
    while !eof(data)
      line = readline(data)
      if line == ""
        passport = strip(passport)
        push!(passport_strings, passport)
        passport = ""
      else
        passport = passport * " " * line
      end
    end

    push!(passport_strings, strip(passport))
  end

  map(parse_passport, passport_strings)
end

function valid_year(val, start, stop)
  length(val) == 4 && start <= parse(Int, val) <= stop
end

function valid_hair(val)
  pattern = r"^#[a-f0-9]{6}$"
  occursin(pattern, val)
end

function valid_height(val)
  pattern = r"^(\d+)(cm|in)$"
  pattern_match = match(pattern, val)
  if pattern_match === nothing
    return false
  end

  if pattern_match.captures[2] == "cm"
    150 <= parse(Int, pattern_match.captures[1]) <= 193
  else
    59 <= parse(Int, pattern_match.captures[1]) <= 76
  end
end

function valid_id(val)
  pattern = r"^\d{9}$"
  occursin(pattern, val)
end

function is_valid(count, passport)
  passport_keys = keys(passport)
  valid_2 = true
  for (key, validator) in (("ecl", val -> val in ("amb", "blu", "brn", "gry", "grn", "hzl", "oth")),
                           ("eyr", val -> valid_year(val, 2020, 2030)),
                           ("hcl", valid_hair),
                           ("byr", val -> valid_year(val, 1920, 2002)),
                           ("iyr", val -> valid_year(val, 2010, 2020)),
                           ("hgt", valid_height),
                           ("pid", valid_id))
    if !(key in passport_keys)
      return count
    end

    valid_2 = valid_2 && validator(passport[key])
  end

  count[1] += 1
  count[2] += valid_2
  return count
end

function count_valid(data)
  reduce(is_valid, data; init=[0, 0])
end

function solve(data)
  println(@time count_valid(data))
end

data = load("input.txt")
solve(data)
