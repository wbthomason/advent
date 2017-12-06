def solve1(jumps):
  steps = 0
  index = 0
  while index < len(jumps):
    j = jumps[index]
    steps += 1
    jumps[index] += 1
    index += j
  return steps

def solve2(jumps):
  steps = 0
  index = 0
  while index < len(jumps):
    j = jumps[index]
    steps += 1
    jumps[index] += 1 if jumps[index] < 3 else -1
    index += j
  return steps
