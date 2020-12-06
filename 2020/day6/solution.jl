function load(path)
  groups = []
  open(path) do group_data
    group = []
    while !eof(group_data)
      line = readline(group_data)
      if line == ""
        push!(groups, join(group, ','))
        empty!(group)
      else
        push!(group, strip(line))
      end
    end

    push!(groups, join(group, ','))
  end

  groups
end

function count_answers(data)
  answer_counts :: Array{Int, 1} = []
  total_answers = 0
  total_everyone = 0
  for group in data
    num_members = 1
    answer_counts = zeros(26)
    for c in group
      if c != ','
        answer_counts[convert(Int, c) - 96] += 1
      else
        num_members += 1
      end
    end

    new_answers = 0
    new_everyone = 0
    for c in answer_counts
      if c > 0
        new_answers += 1
        if c == num_members
          new_everyone += 1
        end
      end
    end

    total_answers += new_answers
    total_everyone += new_everyone
  end

  total_answers, total_everyone
end

function solve(data)
  println(@time count_answers(data))
end

data = load("input.txt")
solve(data)
